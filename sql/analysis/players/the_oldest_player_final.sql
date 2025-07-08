SELECT player, birth_data, season_year, age_at_final
FROM (
    SELECT 
        player,
        birth_data,
        season_year,
        CAST(SUBSTRING_INDEX(season_year, '/', -1) AS UNSIGNED) - birth_data AS age_at_final,
        ROW_NUMBER() OVER (PARTITION BY player ORDER BY CAST(SUBSTRING_INDEX(season_year, '/', -1) AS UNSIGNED) - birth_data DESC) AS rn
    FROM finalists_view
) sub
WHERE rn = 1
ORDER BY age_at_final DESC
LIMIT 5;
