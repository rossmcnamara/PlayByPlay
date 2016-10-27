create view Kaggle.PlayTypeKeys
AS

	SELECT DISTINCT 0 AS PlayTypeSkey, s.PlayType
	FROM Stg.NFLPlayByPlay2015 (NOLOCK) s
	LEFT JOIN Stg.PlayTypeKeys (NOLOCK) k
		ON k.PlayType = s.PlayType
	WHERE k.PlayType IS NULL

