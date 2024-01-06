--578 Question with highest answer rate 
#Percent 
Select answers/ total from 
((select question_id, count(question_id) as total from survey_log group by question_id having action=‘show’ )as a join (select question_id, count(question_id) as answers from survey_log group by question_id having action=‘answer’)as b on a.question_id=b.question_id)