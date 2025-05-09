SELECT summary_stats.Player, summary_stats.Cmp, summary_stats.CmpPct,
		summary_stats.Gls, summary_stats.Ast, summary_stats.Touches
	FROM summary_stats
	WHERE summary_stats.Touches > (
		SELECT AVG(summary_stats.Touches)
		FROM summary_stats)
		AND team_name = 'Portland Thorns FC'
	ORDER BY summary_stats.Touches DESC