USE [Library]
GO
/****** Object:  Table [dbo].[BookHistory]    Script Date: 2017-06-12 14:00:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bookbarcode] [nvarchar](50) NOT NULL,
	[readerno] [nvarchar](50) NOT NULL,
	[borroworreturn] [int] NOT NULL,
	[date] [date] NOT NULL,
	[manager] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BookHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Books]    Script Date: 2017-06-12 14:00:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[barcode] [nvarchar](50) NOT NULL,
	[no] [nvarchar](50) NOT NULL,
	[isbn] [nvarchar](50) NULL,
	[name] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[author] [nvarchar](50) NULL,
	[publisher] [nvarchar](50) NULL,
	[publishdate] [nvarchar](50) NULL,
	[price] [int] NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[barcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BorrowReturns]    Script Date: 2017-06-12 14:00:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowReturns](
	[bookbarcode] [nvarchar](50) NOT NULL,
	[readerno] [nvarchar](50) NOT NULL,
	[borroworreturn] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[manager] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Managers]    Script Date: 2017-06-12 14:00:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Readers]    Script Date: 2017-06-12 14:00:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers](
	[no] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[status] [nchar](10) NOT NULL,
	[maxborrow] [int] NOT NULL,
 CONSTRAINT [PK_Readers] PRIMARY KEY CLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
