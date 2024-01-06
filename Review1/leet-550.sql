--550 Percent second login after first login day 
Select count(a.player_id) from 
(Select player_id, min(event_date) from Activity group by player_id as a left join
(Select player_id, event_date as second from Activity group by player_id order by event_date limit 1 offset 1) as b on a.player_id =b.player_id) where min(event_date)+1=second / Select dist(player_id) from Activity 