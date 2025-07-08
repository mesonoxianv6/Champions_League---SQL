SELECT
	player_id,
	player,
	count(*) AS finals_played
FROM
	finalists_view
GROUP BY
	player_id, player
ORDER BY
	finals_played DESC
LIMIT 30