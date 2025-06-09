SELECT match_date AS [Match Date],
		home_team AS [Home Team],
		home_score AS [Home Score],
		away_team AS [Away Team],
		away_score AS [Away Score],
		game_id
FROM match_metadata
ORDER BY [Match Date]