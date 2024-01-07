--626 Exchange seats 

Select
    Id,
    Case 
When s2. student is not Null Then s2.student
When s2.student is null Then s1.student 
End as student
From
    seat s1
    Left join
    seat s2 On 
s1.id
+1=
s2.id