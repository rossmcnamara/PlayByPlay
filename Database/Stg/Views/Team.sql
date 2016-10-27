

CREATE view [Stg].[Team]
as
	SELECT Code AS TeamSkey
		, [Name] AS TeamName
	FROM MDS.vwTeam (NOLOCK)


