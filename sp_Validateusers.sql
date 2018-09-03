-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Barnali Mahato>
-- Create date: <30-08-2018>
-- Description:	<Validate User Details>
-- =============================================
CREATE PROCEDURE spValidateUser 
	-- Add the parameters for the stored procedure here
	@UserName nvarchar(50),
	@Password nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @Count int
    -- Insert statements for procedure here
	SELECT @Count = COUNT(UserName) from tblUsers
	where [UserName] = @UserName and [Password] = @Password

	if(@Count = 1)
	Begin
	     Select  1 as ReturnCode
    End
	Else
	Begin
	     Select  -1 as ReturnCode
    End

END
GO
