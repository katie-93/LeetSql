--534 Sum Game Play For Day

Select player_id, event_date, sum(games_played)
from
    (select player_id, event_date, lag(event_date,1) Over(Partition by player_id Order by event_date) lastdate, games_played
    From Activity )
group by (player_id, event_date
) 