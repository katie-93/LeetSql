--1270 Direct / indirect reporter 
Select employee_id 
From Employees e1 right join Employees e2 on e1.manager_id =e2.employee_id right join Employee e3 on e2.manager_id =e3.employee_id where e3.employee_id =1