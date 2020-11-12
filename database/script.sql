USE [master]
GO
/****** Object:  Database [harvestMore]    Script Date: 10-Nov-20 13:54:00 ******/
CREATE DATABASE [harvestMore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'harvestMore', FILENAME = N'/var/opt/mssql/data/harvestMore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'harvestMore_log', FILENAME = N'/var/opt/mssql/data/harvestMore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [harvestMore] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [harvestMore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [harvestMore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [harvestMore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [harvestMore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [harvestMore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [harvestMore] SET ARITHABORT OFF 
GO
ALTER DATABASE [harvestMore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [harvestMore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [harvestMore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [harvestMore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [harvestMore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [harvestMore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [harvestMore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [harvestMore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [harvestMore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [harvestMore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [harvestMore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [harvestMore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [harvestMore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [harvestMore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [harvestMore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [harvestMore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [harvestMore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [harvestMore] SET RECOVERY FULL 
GO
ALTER DATABASE [harvestMore] SET  MULTI_USER 
GO
ALTER DATABASE [harvestMore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [harvestMore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [harvestMore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [harvestMore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [harvestMore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'harvestMore', N'ON'
GO
ALTER DATABASE [harvestMore] SET QUERY_STORE = OFF
GO
USE [harvestMore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10-Nov-20 13:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[Owner] [varchar](50) NOT NULL,
	[Balance] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[Labelled] [bit] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 10-Nov-20 13:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 10-Nov-20 13:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [varchar](50) NOT NULL,
	[UploadedBy] [varchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
	[Labelled] [bit] NOT NULL,
	[LabelledBy] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 10-Nov-20 13:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](200) NOT NULL,
	[Sender] [varchar](50) NOT NULL,
	[SendDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10-Nov-20 13:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Area] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 10-Nov-20 13:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ('0') FOR [Balance]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [Labelled]
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT ((0)) FOR [Labelled]
GO
USE [master]
GO
ALTER DATABASE [harvestMore] SET  READ_WRITE 
GO
