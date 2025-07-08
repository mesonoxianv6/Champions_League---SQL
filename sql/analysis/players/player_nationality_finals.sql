SELECT 
	nationality,
	count(distinct player_id) AS final_players
FROM
	finalists_view
GROUP BY
	nationality
ORDER BY
	final_players DESC
LIMIT
	10