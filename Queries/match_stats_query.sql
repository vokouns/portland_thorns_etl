SELECT game_id,
		home_team AS [Home Team],
		home_score AS [Home Score],
		away_team AS [Away Team],
		away_score AS [Away Score],
		possession_home AS [Home Possession %],
		possession_away AS [Away Possession %],
		passing_accuracy_home AS [Home Passing Accuracy %],
		passing_accuracy_away AS [Away Passing Accuracy %],
		shots_on_target_home AS [Home Shots on Target],
		shots_on_target_away AS [Away Shots on Target],
		fouls_home AS [Home Fouls],
		fouls_away AS [Away Fouls]
FROM match_metadata
WHERE game_id = '7239a666'