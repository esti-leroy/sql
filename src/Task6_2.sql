-- Для вызова функции fSalary
DECLARE
    nEmpID hr.EMPLOYEES.employee_id%TYPE := &Номер_сотрудника;
    result NUMBER(18, 2);
BEGIN
    result := fsalary(nEmpID);
    DBMS_OUTPUT.PUT_LINE('Зарплата: ' || result);
END;