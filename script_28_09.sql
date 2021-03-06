USE [master]
GO
/****** Object:  Database [POS_StockManagement]    Script Date: 28-09-2018 00:35:33 ******/
CREATE DATABASE [POS_StockManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POS_StockManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014EXPRESS\MSSQL\DATA\POS_StockManagement.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'POS_StockManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014EXPRESS\MSSQL\DATA\POS_StockManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [POS_StockManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POS_StockManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POS_StockManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POS_StockManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POS_StockManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POS_StockManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POS_StockManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [POS_StockManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [POS_StockManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POS_StockManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POS_StockManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POS_StockManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POS_StockManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POS_StockManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POS_StockManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POS_StockManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POS_StockManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [POS_StockManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POS_StockManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POS_StockManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POS_StockManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POS_StockManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POS_StockManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POS_StockManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POS_StockManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [POS_StockManagement] SET  MULTI_USER 
GO
ALTER DATABASE [POS_StockManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POS_StockManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POS_StockManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POS_StockManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [POS_StockManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [POS_StockManagement]
GO
/****** Object:  Table [dbo].[tblBrand]    Script Date: 28-09-2018 00:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrand](
	[Brand_ID] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Brand_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 28-09-2018 00:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblColor]    Script Date: 28-09-2018 00:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblColor](
	[Color_ID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Color_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomerServiceManage]    Script Date: 28-09-2018 00:35:34 ******/
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
/****** Object:  Table [dbo].[tblPurchaseManage]    Script Date: 28-09-2018 00:35:34 ******/
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
/****** Object:  Table [dbo].[tblSize]    Script Date: 28-09-2018 00:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSize](
	[Size_ID] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Size_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStockManage]    Script Date: 28-09-2018 00:35:34 ******/
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
/****** Object:  Table [dbo].[tblUsers]    Script Date: 28-09-2018 00:35:34 ******/
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
SET IDENTITY_INSERT [dbo].[tblBrand] ON 

INSERT [dbo].[tblBrand] ([Brand_ID], [Brand]) VALUES (1, N'BATA')
INSERT [dbo].[tblBrand] ([Brand_ID], [Brand]) VALUES (2, N'ADIDAS')
INSERT [dbo].[tblBrand] ([Brand_ID], [Brand]) VALUES (3, N'PUMA')
SET IDENTITY_INSERT [dbo].[tblBrand] OFF
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([Category_ID], [Category]) VALUES (1, N'MALE')
INSERT [dbo].[tblCategory] ([Category_ID], [Category]) VALUES (2, N'FEMALE')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
SET IDENTITY_INSERT [dbo].[tblColor] ON 

INSERT [dbo].[tblColor] ([Color_ID], [Color]) VALUES (1, N'YELLOW')
INSERT [dbo].[tblColor] ([Color_ID], [Color]) VALUES (2, N'WHITE')
INSERT [dbo].[tblColor] ([Color_ID], [Color]) VALUES (3, N'GREEN')
INSERT [dbo].[tblColor] ([Color_ID], [Color]) VALUES (4, N'BLACK')
INSERT [dbo].[tblColor] ([Color_ID], [Color]) VALUES (5, N'RED')
INSERT [dbo].[tblColor] ([Color_ID], [Color]) VALUES (6, N'BLUE')
SET IDENTITY_INSERT [dbo].[tblColor] OFF
SET IDENTITY_INSERT [dbo].[tblSize] ON 

INSERT [dbo].[tblSize] ([Size_ID], [Size]) VALUES (1, 40)
INSERT [dbo].[tblSize] ([Size_ID], [Size]) VALUES (2, 38)
INSERT [dbo].[tblSize] ([Size_ID], [Size]) VALUES (3, 32)
SET IDENTITY_INSERT [dbo].[tblSize] OFF
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'AB23', CAST(2000 AS Decimal(18, 0)), N'BLACK', N'BATA', N'MALE', 38, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'AD12', CAST(1000 AS Decimal(18, 0)), N'GREEN', N'ADIDAS', N'FEMALE', 38, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'AE32', CAST(2543 AS Decimal(18, 0)), N'RED', N'ADIDAS', N'FEMALE', 40, CAST(N'2018-09-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'CE87', CAST(987 AS Decimal(18, 0)), N'GREEN', N'ADIDAS', N'FEMALE', 38, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'CS10', CAST(987 AS Decimal(18, 0)), N'BLACK', N'BATA', N'FEMALE', 38, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'FG34', CAST(1345 AS Decimal(18, 0)), N'GREEN', N'PUMA', N'FEMALE', 38, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'IU45', CAST(1000 AS Decimal(18, 0)), N'GREEN', N'ADIDAS', N'MALE', 40, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'PL24', CAST(5432 AS Decimal(18, 0)), N'GREEN', N'PUMA', N'FEMALE', 38, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'PO12', CAST(1000 AS Decimal(18, 0)), N'BLACK', N'PUMA', N'FEMALE', 32, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'TE12', CAST(1987 AS Decimal(18, 0)), N'GREEN', N'BATA', N'MALE', 38, CAST(N'2018-09-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblStockManage] ([ProductID], [Price], [Color], [Brand], [Category], [Size], [DateOfEntry]) VALUES (N'UY34', CAST(9824 AS Decimal(18, 0)), N'WHITE', N'ADIDAS', N'FEMALE', 38, CAST(N'2018-09-28 00:00:00.000' AS DateTime))
INSERT [dbo].[tblUsers] ([UserID], [UserName], [Password], [Roles]) VALUES (N'A1', N'admin', N'admin', N'AdminUser')
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
/****** Object:  StoredProcedure [dbo].[spAddItem]    Script Date: 28-09-2018 00:35:34 ******/
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

GO
/****** Object:  StoredProcedure [dbo].[spDisplayItem]    Script Date: 28-09-2018 00:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDisplayItem] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * From tblStockManage;
END

GO
/****** Object:  StoredProcedure [dbo].[spDropdownlist]    Script Date: 28-09-2018 00:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDropdownlist]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.tblSize
	SELECT * FROM dbo.tblColor
	SELECT * FROM dbo.tblCategory
	SELECT * FROM dbo.tblBrand; 
END

GO
/****** Object:  StoredProcedure [dbo].[spValidateUser]    Script Date: 28-09-2018 00:35:34 ******/
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
USE [master]
GO
ALTER DATABASE [POS_StockManagement] SET  READ_WRITE 
GO
