--1212 Football Team Score 
#表命名
With A as(select host_team, guest_team, host_goals, guest_goals, case when host_goals
>
guest_goals then ‘3’ when host_goals=guest_goals then ‘2’ else ‘0’ end as host_score, case when host_goals
<
guest_goals then ‘3’ when host_goals=guest_goals then ‘2’ else ‘0’ end as guest_score) 
With H as (select h.host_team, sum(h.host_score) as scores1 from A group by host_team) 
With G as (select g.guest_team, sum(g.guest_score) as scores2 from A group by guest_team)
select team_id, team_name, sum(scores1+scores2) from Teams t left join H on t.team_id=H.team_id left join G on t.team_id=G.team_id 