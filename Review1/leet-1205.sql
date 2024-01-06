--1205 Month transactions 
#TooLong
select Month(trans_date)as month, country, count(country), sum(amount) 
From Transaction Where id not in (select id from Description) tmp1 
Left join (select month(d.trans_date) as month , count(d.trans_id), sum(t.amount) from Transaction t right join Description d on 
t.id
=
d.id
) tmp2 On tmp1.month=tmp2.month