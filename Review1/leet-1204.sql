--1204 Elevator 

#SUM Over 
#学到了 
With tmp as (select person_name, sum(weight) over(order by turn asc) as sum from Queue ) 
Select person_name from tmp where sum
>
1000 order by sum limit 1