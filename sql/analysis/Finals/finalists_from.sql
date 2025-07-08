SELECT 
    gs.group_name,
    COUNT(DISTINCT CONCAT(kos.team_id, '-', kos.season_id)) AS finalists_from
FROM 
    group_stage gs
JOIN 
    knock_out_stage kos 
    ON gs.team_id = kos.team_id 
    AND gs.season_id = kos.season_id
WHERE 
    kos.knock_out_stage = 'final'
GROUP BY 
    gs.group_name
ORDER BY 
    finalists_from DESC;