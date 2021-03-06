/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.1742)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [GICproject]
GO
/****** Object:  Table [dbo].[tbl_Designation]    Script Date: 05/28/19 3:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Designation](
	[Designation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Designation_Name] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Designation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 05/28/19 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Employee](
	[Employee_Id] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](30) NOT NULL,
	[Middle_Name] [varchar](30) NULL,
	[Last_Name] [varchar](30) NULL,
	[Designation] [int] NOT NULL,
	[Mobile_No] [varchar](10) NOT NULL,
	[Email_Id] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 05/28/19 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](30) NOT NULL,
	[Last_Name] [varchar](30) NOT NULL,
	[Email_Id] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Designation] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Designation] ON 

INSERT [dbo].[tbl_Designation] ([Designation_Id], [Designation_Name]) VALUES (1, N'Senior HR')
INSERT [dbo].[tbl_Designation] ([Designation_Id], [Designation_Name]) VALUES (2, N'Software Developer')
INSERT [dbo].[tbl_Designation] ([Designation_Id], [Designation_Name]) VALUES (3, N'Consultant')
INSERT [dbo].[tbl_Designation] ([Designation_Id], [Designation_Name]) VALUES (4, N'Trainer')
INSERT [dbo].[tbl_Designation] ([Designation_Id], [Designation_Name]) VALUES (5, N'Technical Analyst')
INSERT [dbo].[tbl_Designation] ([Designation_Id], [Designation_Name]) VALUES (6, N'Manager')
SET IDENTITY_INSERT [dbo].[tbl_Designation] OFF
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([User_Id], [First_Name], [Last_Name], [Email_Id], [Password], [Designation]) VALUES (2, N'Gaous', N'Khan', N'khangaous@gmail.com', N'123456', 1)
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
ALTER TABLE [dbo].[tbl_Employee]  WITH CHECK ADD FOREIGN KEY([Designation])
REFERENCES [dbo].[tbl_Designation] ([Designation_Id])
GO
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD FOREIGN KEY([Designation])
REFERENCES [dbo].[tbl_Designation] ([Designation_Id])
GO
