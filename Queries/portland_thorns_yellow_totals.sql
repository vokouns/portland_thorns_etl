SELECT player, 
		SUM(performance_crdy) AS [Total Yellow Cards]
FROM misc_stats
WHERE team_name = 'Portland Thorns FC'
GROUP BY player
HAVING SUM(performance_crdy) > 0
ORDER BY [Total Yellow Cards] DESC