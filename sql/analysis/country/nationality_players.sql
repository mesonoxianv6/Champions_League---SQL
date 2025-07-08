SELECT
	nationality,
	count(player_id) AS nr_of_players
FROM
	players_list pl 
GROUP BY
	nationality
ORDER BY
	nr_of_players DESC
