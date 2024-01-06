--570 Manager of more than 5 reporters
#Groupby
#Having 
Select e2.Name from 
(Employee e1 left join Employee e2 on e1.ManagerId= e2.Id) 
Group by e1.ManagerId having count(e1.ManagerId)
>
=5