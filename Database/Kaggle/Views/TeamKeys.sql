create view Kaggle.TeamKeys
AS

	SELECT DISTINCT 0 AS TeamSkey, s.TeamName
	FROM (
		SELECT posteam AS TeamName
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE posteam <> '' AND posteam IS NOT NULL
		UNION 	
		SELECT DefensiveTeam
		FROM Stg.NFLPlayByPlay2015 (NOLOCK)
		WHERE DefensiveTeam <> '' AND DefensiveTeam IS NOT NULL
	) s
	LEFT JOIN Stg.TeamKeys (NOLOCK) k
		ON K.TeamName = S.TeamName
	WHERE k.TeamName IS NULL

