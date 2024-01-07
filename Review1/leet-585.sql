--585 Total investments in 2016 
#喵

Select sum(TIV_2016) as TIV_2016
from
    insurance
where TIV_2015 is not NULL and (LAT, LON) 
not in 
(Select LAT, LON
    from insurance
    group by (LAT, LON)
having count(PID)
>
=2)