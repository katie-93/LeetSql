--612 Shortest distance 

Select
    min(distance) as shortest
From
    (Select (SQRT(Pow(x),2)+Pow(y), 2) as distance
from point_id group by
(x, y))