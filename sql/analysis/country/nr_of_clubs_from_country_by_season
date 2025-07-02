SELECT
	t.country_name AS country,
	s.season_year,
	count(DISTINCT gs.team_id)	AS nr_of_clubs
FROM
	group_stage gs
JOIN teams t ON t.team_id = gs.team_id
JOIN seasons s ON gs.season_id = s.season_id
GROUP BY
	country,
	season_year
ORDER BY
	nr_of_clubs DESC