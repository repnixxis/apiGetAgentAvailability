USE [V3_admin]
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
 FROM V3_admin.dbo.AgentsTeams at2 (NOLOCK)
 WHERE at2.TeamId = @TeamId
 AND at2.BaseLevel > 0
END
GO
