--1264 Page recommendation 
#喵

Select dist(page_id)
From Likes
Where user_id in 
(select user2_id)
From Friendship where user1_id =1)