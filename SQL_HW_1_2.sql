Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employees 
join employee_salary  
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id; 



Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;



Вывести все зарплатные позиции, но работник по ним не назначен. 

(ЗП есть, но не понятно кто её получает.)
select monthly_salary 
from salary
left join employee_salary
on salary.id = employee_salary.salary_id
where employee_id is null;



Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен.

(ЗП есть, но не понятно кто её получает.)
select monthly_salary
from salary
left join employee_salary
on salary.id = employee_salary.salary_id
where employee_id is null and monthly_salary < 2000;



Найти всех работников кому не начислена ЗП.

select employees.id, employee_name 
from employees
left join employee_salary
on employee_salary.employee_id = employees.id 
where employee_id is null;



Вывести всех работников с названиями их должности.

select employees.id, employee_name, role_name
from employees
left join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles.id = roles_employee.role_id
where role_name is not null;



Вывести имена и должность только Java разработчиков.

select employees.id, employee_name, role_name
from employees
left join roles_employee
on employees.id = roles_employee.employee_id 
left join roles
on roles.id = roles_employee.role_id
where role_name like '%Java %';



Вывести имена и должность только Python разработчиков.

select employees.id, employee_name, role_name
from employees
left join roles_employee
on employees.id = roles_employee.employee_id 
left join roles
on roles.id = roles_employee.role_id
where role_name like '%Python %';



Вывести имена и должность всех QA инженеров.

select employees.id, employee_name, role_name
from employees
left join roles_employee
on employees.id = roles_employee.employee_id 
left join roles
on roles.id = roles_employee.role_id
where role_name like '%QA%';



Вывести имена и должность ручных QA инженеров.

select employees.id, employee_name, role_name
from employees
left join roles_employee
on employees.id = roles_employee.employee_id 
left join roles
on roles.id = roles_employee.role_id
where role_name like '%Manual QA%';



Вывести имена и должность автоматизаторов QA.

select employees.id, employee_name, role_name
from employees
left join roles_employee
on employees.id = roles_employee.employee_id 
left join roles
on roles.id = roles_employee.role_id
where role_name like '%Automation QA%';



Вывести имена и зарплаты Junior специалистов.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Junior%'
and monthly_salary is not null;



Вывести имена и зарплаты Middle специалистов.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Middle%'
and monthly_salary is not null;



Вывести имена и зарплаты Senior специалистов.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Senior%'
and monthly_salary is not null;



Вывести зарплаты Java разработчиков.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Java %'
and monthly_salary is not null;



Вывести зарплаты Python разработчиков.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Python %'
and monthly_salary is not null;



Вывести имена и зарплаты Junior Python разработчиков.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Junior Python%'
and monthly_salary is not null;



Вывести имена и зарплаты Middle JS разработчиков.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Middle JavaS%'
and monthly_salary is not null;



Вывести имена и зарплаты Senior Java разработчиков.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like 'Senior Java %'
and monthly_salary is not null;



Вывести зарплаты Junior QA инженеров.

select employee_name, monthly_salary, role_name
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Junior%QA%'
and monthly_salary is not null;



Вывести среднюю зарплату всех Junior специалистов.

select avg(monthly_salary)
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%Junior%'
and monthly_salary is not null;



Вывести сумму зарплат JS разработчиков.

select sum(monthly_salary)
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%JavaS%'
and monthly_salary is not null;



Вывести минимальную ЗП QA инженеров.

select min(monthly_salary)
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%QA%'
and monthly_salary is not null;



Вывести максимальную ЗП QA инженеров.

select max(monthly_salary)
from employees
left join employee_salary
on employees.id = employee_salary.employee_id 
left  join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
left join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%QA%'
and monthly_salary is not null;



Вывести количество QA инженеров.

select count(employee_name) 
from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%QA%';



Вывести количество Middle специалистов.

select count(employee_name) 
from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id  = roles.id
where roles.role_name like 'Middle%';



Вывести количество разработчиков.

select count(employee_name) 
from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%developer';



Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id  = roles.id
where roles.role_name like '%developer';



Вывести имена, должности и ЗП всех специалистов по возрастанию.

select employees.employee_name ,roles.role_name ,salary.monthly_salary 
from employees
join employee_salary
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
order by monthly_salary asc; 



Вывести имена, должности и ЗП всех специалистов по возрастанию 
у специалистов у которых ЗП от 1700 до 2300

select employees.employee_name ,roles.role_name ,salary.monthly_salary 
from employees
join employee_salary
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where monthly_salary between 1700 and 2300 
order by monthly_salary asc; 



Вывести имена, должности и ЗП всех специалистов по возрастанию 
у специалистов у которых ЗП меньше 2300

select employees.employee_name ,roles.role_name ,salary.monthly_salary 
from employees
join employee_salary
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where monthly_salary < 2300 
order by monthly_salary asc; 



Вывести имена, должности и ЗП всех специалистов по возрастанию 
у специалистов у которых ЗП равна 1100, 1500, 2000

select employees.employee_name ,roles.role_name ,salary.monthly_salary 
from employees
join employee_salary
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id  = salary.id
join roles_employee
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where monthly_salary = 1100 
or monthly_salary = 1500
or monthly_salary =  2000 
order by monthly_salary asc; 

