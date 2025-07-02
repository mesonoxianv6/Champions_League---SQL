WITH cc AS (
		SELECT
			t.country_name AS country,
			gs.team_id
		FROM
			group_stage gs
		JOIN teams t ON t.team_id = gs.team_id
		)
SELECT
	cc.country,
	count(DISTINCT kos.team_id) AS nr_of_finalist_clubs,
	GROUP_CONCAT(DISTINCT kos.team_name) AS club_name
FROM
	knock_out_stage kos
JOIN cc ON cc.team_id = kos.team_id
WHERE
	kos.knock_out_stage = 'final'
GROUP BY
	cc.country
ORDER BY
	nr_of_finalist_clubs DESC