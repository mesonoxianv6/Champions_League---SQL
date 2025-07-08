CREATE VIEW finalists_view AS
SELECT
    kos.season_id,
    se.season_year,
    kos.team_name,
    s.player_id,
    pl.player,
    pl.nationality,
    pl.birth_data
FROM knock_out_stage kos
JOIN squads s
    ON s.season_id = kos.season_id
    AND s.team_name = kos.team_name
JOIN players_list pl
    ON s.player_id = pl.player_id
JOIN seasons se
    ON kos.season_id = se.season_id
WHERE kos.knock_out_stage = 'final';