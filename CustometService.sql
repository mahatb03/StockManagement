USE [POS_StockManagement]
GO

/****** Object:  Table [dbo].[tblCustomerServiceManage]    Script Date: 28-08-2018 14:34:52 ******/
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

ALTER TABLE [dbo].[tblCustomerServiceManage]  WITH CHECK ADD  CONSTRAINT [FK_tblCustomerServiceManage_tblStockManage] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblStockManage] ([ProductID])
GO

ALTER TABLE [dbo].[tblCustomerServiceManage] CHECK CONSTRAINT [FK_tblCustomerServiceManage_tblStockManage]
GO


