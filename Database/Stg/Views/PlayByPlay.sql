CREATE VIEW Stg.PlayByPlay
AS
	SELECT DISTINCT Column_001 AS ID
		, GameID
		, CONVERT(VARCHAR(8), Date, 112) AS CalendarSkey
		, p.PlayerSkey AS PasserSkey
		, ru.PlayerSkey AS RusherSkey
		, rc.PlayerSkey AS ReceiverSkey
		, t1.PlayerSkey AS Tackler1Skey
		, t2.PlayerSkey AS Tackler2Skey
		, rt.PlayerSkey AS ReturnerSkey
		, bp.PlayerSkey AS BlockingPlayerSkey
		, p.PlayerSkey AS PenalizedPlayerSkey
		, po.PassOutcomeSkey
		, rr.ReturnResultSkey
		, ot.TeamSkey AS OffensiveTeamSkey
		, dt.TeamSkey AS DefensiveTeamSkey
		, pt.PlayTypeSkey
		, ydsnet AS YardsGained
		, Touchdown
		, PassAttempt
		, RushAttempt
		, Reception
		, Sack
	FROM Stg.NFLPlayByPlay2015 (NOLOCK) f
	LEFT JOIN Stg.ReturnResultKeys (NOLOCK) rr
		ON f.ReturnResult = rr.ReturnResult
	LEFT JOIN Stg.PlayerKeys (NOLOCK) p
		ON p.PlayerName = f.Passer
	LEFT JOIN Stg.PlayerKeys (NOLOCK) ru
		ON ru.PlayerName = f.Rusher
	LEFT JOIN Stg.PlayerKeys (NOLOCK) rc
		ON rc.PlayerName = f.Receiver
	LEFT JOIN Stg.PlayerKeys (NOLOCK) t1
		ON t1.PlayerName = f.Tackler1
	LEFT JOIN Stg.PlayerKeys (NOLOCK) t2
		ON t2.PlayerName = f.Tackler2
	LEFT JOIN Stg.PlayerKeys (NOLOCK) rt
		ON rt.PlayerName = f.Returner
	LEFT JOIN Stg.PlayerKeys (NOLOCK) bp
		ON bp.PlayerName = f.BlockingPlayer
	LEFT JOIN Stg.PlayerKeys (NOLOCK) pp
		ON pp.PlayerName = f.PenalizedPlayer
	LEFT JOIN Stg.PassOutcomeKeys (NOLOCK) po
		ON po.PassOutcome = f.PassOutcome
	LEFT JOIN Stg.TeamKeys (NOLOCK) ot
		ON ot.TeamName = f.posteam		
	LEFT JOIN Stg.TeamKeys (NOLOCK) dt
		ON dt.TeamName = f.DefensiveTeam
	LEFT JOIN Stg.PlayTypeKeys (NOLOCK) pt
		ON pt.PlayType = f.PlayType

