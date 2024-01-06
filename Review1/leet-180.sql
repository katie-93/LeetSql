--180 consecutive 
Select Num as ConsecutiveNums from 
(select Id, Num, Lead(Num,1) Over(Partition By Num) nextNum, Lead(Num,2) Over(Partition By Num) next2Num From Logs inner join Logs Using (Id) ) 
where Num =nextNum And nextNum =next2Num 
Should be over (order by id)