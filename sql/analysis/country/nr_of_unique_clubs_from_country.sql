SELECT
	t.country_name AS country,
	count(DISTINCT gs.team_id)	AS nr_of_clubs
FROM
	group_stage gs
JOIN teams t ON t.team_id = gs.team_id
GROUP BY
	country
ORDER BY
	nr_of_clubs DESC