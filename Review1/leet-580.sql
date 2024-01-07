--580 Student number in each department 
#columnNameJoinTables

Select d.dept_name as Name, student_number
from ((select dept_id, count(dept_id) as student_number
    from Student
    group by dept_id) as s right join Department d on s.dept_id =d.dept_id
)
order by student_number desc, dept_name 