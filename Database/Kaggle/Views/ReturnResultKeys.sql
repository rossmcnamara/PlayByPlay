create view Kaggle.ReturnResultKeys
AS

	SELECT DISTINCT 0 AS ReturnResultSkey, s.ReturnResult
	FROM Stg.NFLPlayByPlay2015 (NOLOCK) s
	LEFT JOIN Stg.ReturnResultKeys (NOLOCK) k
		ON k.ReturnResult = s.ReturnResult
	WHERE k.ReturnResult IS NULL

