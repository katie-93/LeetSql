--602 Friend requests: most friends 
Select accepter_id as id, count(accepter_id) as num From 
(Select accepter_id From (select dist(requester_id, accepter_id) from request_accepted) 
Union 
(Select requester_id 
From (select dist(requester_id, accepter_id) from request_accepted))) 
order by num desc limit 1
#union 