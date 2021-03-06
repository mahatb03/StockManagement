USE [POS_StockManagement]
GO
/****** Object:  Table [dbo].[tblBrand]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblColor]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblColor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomerServiceManage]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomerServiceManage](
	[ServiceID] [nvarchar](50) NOT NULL,
	[ProductID] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Purchased_Date] [datetime] NOT NULL,
	[Service_Date] [datetime] NOT NULL,
	[Return_Date] [datetime] NOT NULL,
	[Service_Charge] [int] NOT NULL,
 CONSTRAINT [PK_tblCustomerServiceManage] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPurchaseManage]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPurchaseManage](
	[SalesID] [nvarchar](50) NOT NULL,
	[ProductID] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Purchased_Date] [datetime] NOT NULL,
	[Purchased_Quantity] [int] NOT NULL,
	[Pending_Stock] [int] NULL,
 CONSTRAINT [PK_tblPurchaseManage] PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSize]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSize](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStockManage]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStockManage](
	[ProductID] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[DateOfEntry] [datetime] NOT NULL,
 CONSTRAINT [PK_tblStockManage] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Roles] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblCustomerServiceManage]  WITH CHECK ADD  CONSTRAINT [FK_tblCustomerServiceManage_tblStockManage] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblStockManage] ([ProductID])
GO
ALTER TABLE [dbo].[tblCustomerServiceManage] CHECK CONSTRAINT [FK_tblCustomerServiceManage_tblStockManage]
GO
ALTER TABLE [dbo].[tblPurchaseManage]  WITH CHECK ADD  CONSTRAINT [FK_tblPurchaseManage_tblStockManage] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblStockManage] ([ProductID])
GO
ALTER TABLE [dbo].[tblPurchaseManage] CHECK CONSTRAINT [FK_tblPurchaseManage_tblStockManage]
GO
/****** Object:  StoredProcedure [dbo].[spAddItem]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spAddItem]
	-- Add the parameters for the stored procedure here
	( @ProductId nvarchar(50),
	  @Price decimal(18,0),
	  @Color nvarchar(50),
	  @Brand nvarchar(50),
	  @Category nvarchar(50),
	  @Size int,
	  @DateofEntry datetime
	  
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.tblStockManage VALUES (@ProductId,@Price,@Color,@Brand,@Category,@Size,@DateofEntry)
END

GO
/****** Object:  StoredProcedure [dbo].[spBrand]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spBrand]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.tblBrand;

END

GO
/****** Object:  StoredProcedure [dbo].[spCategory]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCategory]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.tblCategory;

END

GO
/****** Object:  StoredProcedure [dbo].[spColor]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spColor]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.tblColor;

END

GO
/****** Object:  StoredProcedure [dbo].[spSize]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSize]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.tblSize;

END

GO
/****** Object:  StoredProcedure [dbo].[spValidateUser]    Script Date: 07-09-2018 00:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Barnali Mahato>
-- Create date: <30-08-2018>
-- Description:	<Validate User Details>
-- =============================================
CREATE PROCEDURE [dbo].[spValidateUser] 
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
