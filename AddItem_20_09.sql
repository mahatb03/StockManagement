USE [POS_StockManagement]
GO
/****** Object:  StoredProcedure [dbo].[spAddItem]    Script Date: 20-09-2018 15:42:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spAddItem]
	-- Add the parameters for the stored procedure here
	( @ProductId nvarchar(50),
	  @Price decimal(18,0),
	  @Color int,
	  @Brand int,
	  @Category int,
	  @Size int,
	  @DateofEntry datetime
	  
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.tblStockManage VALUES (@ProductId,@Price, 
	(SELECT Color FROM dbo.tblColor WHERE @Color = Color_ID), 
	(SELECT Brand FROM dbo.tblBrand WHERE @Brand = Brand_ID),
	(SELECT Category FROM dbo.tblCategory WHERE @Category = Category_ID),
	(SELECT Size FROM dbo.tblSize WHERE @Size = Size_ID)
	,@DateofEntry)
	
END
