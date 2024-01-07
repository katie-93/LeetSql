--608 Tree node: case… when 

Select id,
    Case 
When id not in (select p_id
    from tree) Then "leaf"When p_id is null Then "root"
Else "Inner"
End
as "Type"
From tree