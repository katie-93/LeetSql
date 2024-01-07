--574 Candidate of most votes 

Select c.Name
from Candidate c join
    (Select count(CandidateId)
    from Vote
    group by CandidateId
    order by CandidateId desc limit 1 as v) on 
c.id
=v.CandidateId