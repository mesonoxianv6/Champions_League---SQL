SELECT
	kos.team_name,
	COUNT(*) AS lost_finals
FROM 
	knock_out_stage kos
WHERE
	kos.knock_out_stage_status = "loser"
GROUP BY
	kos.team_name
ORDER BY 
	lost_finals DESC