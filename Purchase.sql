USE [POS_StockManagement]
GO

/****** Object:  Table [dbo].[tblPurchaseManage]    Script Date: 28-08-2018 14:36:02 ******/
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

ALTER TABLE [dbo].[tblPurchaseManage]  WITH CHECK ADD  CONSTRAINT [FK_tblPurchaseManage_tblStockManage] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblStockManage] ([ProductID])
GO

ALTER TABLE [dbo].[tblPurchaseManage] CHECK CONSTRAINT [FK_tblPurchaseManage_tblStockManage]
GO


