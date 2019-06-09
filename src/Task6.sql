CREATE FUNCTION fSalary(empId NUMBER)
    RETURN NUMBER
    IS employeeSalary NUMBER(18,2);
BEGIN
    SELECT SALARY INTO employeeSalary FROM HR.EMPLOYEES WHERE employee_id = empId;
    DBMS_OUTPUT.PUT_LINE('Номер сотрудника: ' || empId || '  Зарплата: ' || employeeSalary);
    RETURN employeeSalary;
END;