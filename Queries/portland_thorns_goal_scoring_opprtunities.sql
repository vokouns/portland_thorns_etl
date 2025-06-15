SELECT 
    p.Player,
    s.Gls AS Goals,
    p.Ast AS Assists,
    s.PKatt AS [Penalty Kicks],
    s.Sh AS Shots,
    p.final_third AS [Passes into Final Third],
    p.PPA AS [Passes into Penalty Area],
    p.CrsPA AS [Crosses into Penalty Area],
    p.PrgP AS [Progressive Passes],
    po.takeons_succ AS [Successful Take Ons]
FROM passing p
JOIN summary_stats s 
    ON p.game_id = s.game_id AND p.Player = s.Player
JOIN possession po
    ON p.game_id = po.game_id AND p.Player = po.Player
WHERE s.game_id = '7239a666'
  AND s.team_name = 'Portland Thorns FC';
