--1 193 Approved transactions #joincondition
SELECT
	a.MONTH,
	a.country,
	a.trans_count,
	b.approved_count,
	trans_total_amount,
	approved_total_amount 
FROM
	(
	SELECT
		date_format( trans_date,'% Y -% m' ) AS MONTH, --edition
		Country,
		count( Country ) AS trans_count,
		sum( amount ) AS trans_total_amount 
	FROM
	TRANSACTION 
	GROUP BY
	( MONTH, Country ) AS a
	LEFT JOIN ( SELECT country, state, count( country ) AS approved_count, sum( amount ) AS approved_total_amount, trans_date FROM TRANSACTION WHERE state =‘ approved’ )) AS b ON a.country = b.country