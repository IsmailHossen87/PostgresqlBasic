-- proceduresf
CREATE Procedure remove_emp_var (p_em_id INT)
LANGUAGE plpgsql
AS
$$
-- variable declare
DECLARE
test_var int ;
BEGIN 
    SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_em_id;
    DELETE FROM employees WHERE employee_id = test_var;

    RAISE NOTICE 'EMPLYEE REMOVED SUCESSFULLY';
END
$$;

call remove_emp_var(15)

SELECT * FROM employees;
