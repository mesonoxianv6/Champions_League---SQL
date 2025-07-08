SELECT
	kos.team_name,
	COUNT(*) AS wins,
	GROUP_CONCAT(s.season_year ORDER BY s.season_year SEPARATOR ', ') AS win_years
FROM 
	knock_out_stage kos
JOIN
	seasons s
ON 
	s.season_id = kos.season_id
WHERE
	kos.knock_out_stage_status = "winner"
GROUP BY
	kos.team_name
ORDER BY 
	wins DESC