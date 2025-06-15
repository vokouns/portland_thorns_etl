SELECT 
    p.Player,
    SUM(s.Gls) AS Goals,
    SUM(p.Ast) AS Assists,
    SUM(s.PKatt) AS [Penalty Kicks],
    SUM(s.Sh) AS Shots,
    SUM(p.final_third) AS [Passes into Final Third],
    SUM(p.PPA) AS [Passes into Penalty Area],
    SUM(p.CrsPA) AS [Crosses into Penalty Area],
    SUM(p.PrgP) AS [Progressive Passes],
    SUM(po.takeons_succ) AS [Successful Take Ons]
FROM passing p
JOIN summary_stats s 
    ON p.game_id = s.game_id AND p.Player = s.Player
JOIN possession po
    ON p.game_id = po.game_id AND p.Player = po.Player
WHERE s.team_name = 'Portland Thorns FC'
GROUP BY p.Player