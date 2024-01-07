--1308 Total scores different genders 

Select gender, day, sum(score_points)
From Score
group by (gender, day
) order by gender, date 