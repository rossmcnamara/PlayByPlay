create view Kaggle.PassOutcomeKeys
AS

	SELECT DISTINCT 0 AS PassOutcomeSkey, s.PassOutcome
	FROM Stg.NFLPlayByPlay2015 (NOLOCK) s
	LEFT JOIN Stg.PassOutcomeKeys (NOLOCK) k
		ON k.PassOutcome = s.PassOutcome
	WHERE k.PassOutcome IS NULL

