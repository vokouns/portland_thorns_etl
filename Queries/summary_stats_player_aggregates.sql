SELECT
    player,
    SUM(min) AS [Total Minutes],
    ROUND(CAST(SUM(min) AS FLOAT) / COUNT(*), 2) AS [Minutes / Game],
    SUM(Gls) AS [Total Goals],
    ROUND(CAST(SUM(Gls) AS FLOAT) / COUNT(*), 2) AS [Goals / Game],
    SUM(ast) AS [Total Assists],
    ROUND(CAST(SUM(ast) AS FLOAT) / NULLIF(SUM(min), 0), 4) AS [Assist / Minute Played],
    SUM(touches) AS [Total Touches],
    ROUND(CAST(SUM(touches) AS FLOAT) / NULLIF(SUM(min), 0), 4) AS [Touches / Minute Played]
FROM dbo.summary_stats
WHERE team_name = 'Portland Thorns FC'
	AND min > 10
GROUP BY player
ORDER BY [Total Minutes] DESC;
