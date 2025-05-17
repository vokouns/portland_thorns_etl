SELECT Player, SUM(Gls) AS [Total Goals]
FROM summary_stats
WHERE team_name = 'Portland Thorns FC'
GROUP BY Player
ORDER BY [Total Goals] DESC