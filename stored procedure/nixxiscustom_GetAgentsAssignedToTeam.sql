USE [Name_admin] --- adapt DB name
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE dbo.nixxiscustom_GetAgentsAssignedToTeam
@TeamId CHAR(32)
AS 
BEGIN
  -- 
  SET NOCOUNT ON;
  -- Query :
SELECT
*
 FROM Name_admin.dbo.AgentsTeams at2 (NOLOCK) --- adapt DB name
 WHERE at2.TeamId = @TeamId
 AND at2.BaseLevel > 0
END
GO

GRANT EXECUTE ON [dbo].[nixxiscustom_GetAgentsAssignedToTeam] TO [NixxisAdminRole] AS [dbo]
GRANT EXECUTE ON [dbo].[nixxiscustom_GetAgentsAssignedToTeam] TO [NixxisReportingRole] AS [dbo]
GRANT EXECUTE ON [dbo].[nixxiscustom_GetAgentsAssignedToTeam] TO [NixxisUserRole] AS [dbo]
