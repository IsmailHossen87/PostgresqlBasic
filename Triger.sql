CREATE Table user_name(
    userName VARCHAR(50),
    email VARCHAR(70)
)

INSERT INTO user_name (userName,email) VALUES
('ismail','ismalhosen8757@gmail.com'),
('yamin','yamin8757@gmail.com');

SELECT * FROM user_name;

CREATE TABLE save_delete_data(
    delete_userName VARCHAR(50),
    deleteAt TIMESTAMP
)

CREATE OR REPLACE FUNCTION save_delete()
RETURNS TRIGGER
LANGUAGE plpgsql 
AS 
$$
    BEGIN
        INSERT INTO save_delete_data VALUES(OLD.userName,now());
        RAISE NOTICE 'Deleted user audit log created';
        RETURN OLD;
    END
$$

DROP FUNCTION IF EXISTS save_delete();

-- TRIGER
CREATE TRIGGER save_deleteUser
BEFORE DELETE
on user_name
FOR EACH ROW 
EXECUTE FUNCTION save_delete();

DELETE FROM user_name WHERE userName = 'ismail' 


SELECT * FROM save_delete_data;