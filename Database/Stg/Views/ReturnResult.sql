create view Stg.ReturnResult
AS
	SELECT *
	FROM Stg.ReturnResultKeys (NOLOCK)
