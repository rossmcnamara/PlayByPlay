create view Kaggle.PlayerKeys
AS

	SELECT 0 AS PlayerSkey, s.PlayerName
	FROM (
		SELECT Passer AS PlayerName
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE Passer <> '' AND Passer IS NOT NULL
		UNION 	
		SELECT Rusher
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE Rusher <> '' AND Rusher IS NOT NULL
		UNION 	
		SELECT Receiver
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE Receiver <> '' AND Receiver IS NOT NULL
		UNION 	
		SELECT Tackler1
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE Tackler1 <> '' AND Tackler1 IS NOT NULL
		UNION 	
		SELECT Tackler2
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE Tackler2 <> '' AND Tackler2 IS NOT NULL
		UNION 	
		SELECT Returner
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE Returner <> '' AND Returner IS NOT NULL
		UNION 	
		SELECT BlockingPlayer
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE BlockingPlayer <> '' AND BlockingPlayer IS NOT NULL
		UNION 	
		SELECT PenalizedPlayer
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE PenalizedPlayer <> '' AND PenalizedPlayer IS NOT NULL
	) s
	LEFT JOIN Stg.PlayerKeys (NOLOCK) k
		ON k.PlayerName = s.PlayerName
	WHERE k.PlayerName IS NULL

