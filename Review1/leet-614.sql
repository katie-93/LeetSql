--614 Second degree follower 

Select
    followee, count(follower)
From follow
Group by followee
Having followee 
in (select follower
from follow) 