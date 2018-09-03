USE [POS_StockManagement]
GO

/****** Object:  Table [dbo].[tblStockManage]    Script Date: 28-08-2018 14:36:53 ******/
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
	[StockQuantity] [int] NULL,
	[StockQuantity_UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblStockManage] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


