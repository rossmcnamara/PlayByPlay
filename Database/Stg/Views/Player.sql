create view Stg.Player
AS
	SELECT *
	FROM Stg.PlayerKeys (NOLOCK)
