-- Для проверки процедуры
DECLARE
    nEmpID hr.EMPLOYEES.employee_id%TYPE := &Номер_сотрудника;
    nSalary hr.EMPLOYEES.salary%TYPE := &Зарплата;
begin
    pSalary(nEmpId, nSalary);
end;