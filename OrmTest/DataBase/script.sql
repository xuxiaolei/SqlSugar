USE [master]
GO
/****** Object:  Database [SqlSugar4XTest]    Script Date: 2017/5/22 0:28:33 ******/
CREATE DATABASE [SqlSugar4XTest] 
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SqlSugar4XTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SqlSugar4XTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SqlSugar4XTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SqlSugar4XTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SqlSugar4XTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SqlSugar4XTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SqlSugar4XTest] SET RECOVERY FULL 
GO
ALTER DATABASE [SqlSugar4XTest] SET  MULTI_USER 
GO
ALTER DATABASE [SqlSugar4XTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SqlSugar4XTest] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SqlSugar4XTest', N'ON'
GO
USE [SqlSugar4XTest]
GO
/****** Object:  Table [dbo].[School]    Script Date: 2017/5/22 0:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[School](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2017/5/22 0:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int]  NULL,
	[Name] [varchar](50)  NULL,
	[CreateTime] [datetime]  NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (2, 0, N'sun', CAST(N'1900-01-01 12:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (3, 0, N'jack', CAST(N'2017-05-07 11:14:41.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (4, 0, N'jack', CAST(N'2017-05-07 11:14:41.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (5, 0, N'jack', CAST(N'2017-05-07 12:39:44.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (6, 0, N'jack', CAST(N'2017-05-07 12:39:44.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (7, 0, N'jack', CAST(N'2017-05-07 12:40:33.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (8, 0, N'jack', CAST(N'2017-05-07 12:40:33.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (9, 0, N'jack', CAST(N'2017-05-07 12:41:29.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (10, 0, N'jack', CAST(N'2017-05-07 12:41:29.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (11, 0, N'jack', CAST(N'2017-05-07 22:55:31.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (12, 0, N'jack', CAST(N'2017-05-07 22:55:31.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (13, 0, N'jack', CAST(N'2017-05-07 22:55:50.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (14, 0, N'jack', CAST(N'2017-05-07 22:55:50.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (15, 0, N'jack', CAST(N'2017-05-07 22:57:04.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (16, 0, N'jack', CAST(N'2017-05-07 22:57:04.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (17, 0, N'jack', CAST(N'2017-05-07 22:58:38.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (18, 0, N'jack', CAST(N'2017-05-07 22:58:38.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (19, 0, N'jack', CAST(N'2017-05-07 22:59:20.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (20, 0, N'jack', CAST(N'2017-05-07 22:59:20.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (21, 0, N'jack', CAST(N'2017-05-07 23:01:15.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (22, 0, N'jack', CAST(N'2017-05-07 23:01:15.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (23, 0, N'jack', CAST(N'2017-05-07 23:01:47.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (24, 0, N'jack', CAST(N'2017-05-07 23:01:47.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (25, 0, N'jack', CAST(N'2017-05-07 23:05:23.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (26, 0, N'jack', CAST(N'2017-05-07 23:05:23.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (27, 0, N'jack', CAST(N'2017-05-07 23:05:41.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (28, 0, N'jack', CAST(N'2017-05-07 23:05:41.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (29, 0, N'jack', CAST(N'2017-05-07 23:06:57.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (30, 0, N'jack', CAST(N'2017-05-07 23:06:57.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (31, 0, N'jack', CAST(N'2017-05-07 23:09:43.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (32, 0, N'jack', CAST(N'2017-05-07 23:09:43.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (33, 0, N'jack', CAST(N'2017-05-07 23:10:31.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (34, 0, N'jack', CAST(N'2017-05-07 23:10:31.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (35, 0, N'jack', CAST(N'2017-05-07 23:15:51.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (36, 0, N'jack', CAST(N'2017-05-07 23:17:34.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (38, 0, N'jack', CAST(N'2017-05-07 23:19:09.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (39, 0, N'jack', CAST(N'2017-05-07 23:19:30.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (40, 0, N'jack', CAST(N'2017-05-07 23:20:06.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (41, 0, N'jack', CAST(N'2017-05-07 23:20:54.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (42, 0, N'jack', CAST(N'2017-05-07 23:23:26.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (43, 0, N'jack', CAST(N'2017-05-07 23:25:04.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (44, 0, N'jack', CAST(N'2017-05-07 23:47:27.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (45, 0, N'jack', CAST(N'2017-05-07 23:47:55.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1002, 0, N'jack', CAST(N'2017-05-21 13:34:56.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1003, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1004, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1005, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1006, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1007, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1008, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1009, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1010, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1011, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1012, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1013, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1014, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1015, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1016, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1017, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1018, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1019, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1020, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1021, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1022, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1023, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1024, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1025, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([Id], [SchoolId], [Name], [CreateTime]) VALUES (1026, 0, N'jack', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Student] OFF
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'Id'
GO
USE [master]
GO
ALTER DATABASE [SqlSugar4XTest] SET  READ_WRITE 
GO
