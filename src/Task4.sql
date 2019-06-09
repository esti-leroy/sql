DECLARE
    nEmpID hr.employees.employee_id%TYPE := &Номер_сотрудника;
    nOldSalary hr.employees.salary%TYPE;
    nNewSalary hr.employees.salary%TYPE;
    sFirstName hr.employees.first_name%TYPE;
    sLastName hr.employees.last_name%TYPE;
    dHireDate hr.employees.hire_date%TYPE;
    nYears number(4, 0);
BEGIN
    SELECT salary INTO nOldSalary FROM hr.employees WHERE employee_id = nEmpId;
    SELECT first_name INTO sFirstName FROM hr.employees WHERE employee_id = nEmpId;
    SELECT last_name INTO sLastName FROM hr.employees WHERE employee_id = nEmpId;
    SELECT hire_date INTO dHireDate FROM hr.employees WHERE employee_id = nEmpId;
    nYears := MONTHS_BETWEEN(SYSDATE, dHireDate) / 12;
    CASE
        WHEN nYears >= 15 THEN nNewSalary := nOldSalary * 1.15;
        WHEN nYears >= 10 THEN nNewSalary := nOldSalary * 1.10;
        ELSE nNewSalary := nOldSalary * 1.05;
    END CASE;
    UPDATE hr.employees SET SALARY = nNewSalary WHERE employee_id = nEmpID;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Номер сотрудника: ' || nEmpID || '  Имя и фамилия: ' || sFirstName || ' ' || sLastName || '  Проработано лет: ' || nYears);
    DBMS_OUTPUT.PUT_LINE('Старая зарплата: ' || nOldSalary || '  Новая зарплата: ' || nNewSalary);
END;