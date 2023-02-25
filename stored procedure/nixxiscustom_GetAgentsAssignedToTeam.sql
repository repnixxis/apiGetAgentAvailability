USE [appc_admin]
GO
/****** Object:  StoredProcedure [dbo].[nixxiscustom_GetAgentAssignedToTeam2]    Script Date: 02/24/23 14:56:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO Create   PROCEDURE [dbo].[nixxiscustom_GetAgentAssignedToTeam]
@TeamId CHAR(32)
AS
BEGIN 
--
SET NOCOUNT ON;
--
SELECT
*
FROM appc_Admin.dbo.AgentsTeams at2 (NOLOCK)
WHERE at2.TeamId = @TeamId
AND at2.BaseLevel > 0
END