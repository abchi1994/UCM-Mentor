USE [master]
GO
/****** Object:  Database [ucm_mentor]    Script Date: 4/4/2016 3:41:33 PM ******/
CREATE DATABASE [ucm_mentor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ucm_mentor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ucm_mentor.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ucm_mentor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ucm_mentor_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ucm_mentor] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ucm_mentor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ucm_mentor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ucm_mentor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ucm_mentor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ucm_mentor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ucm_mentor] SET ARITHABORT OFF 
GO
ALTER DATABASE [ucm_mentor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ucm_mentor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ucm_mentor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ucm_mentor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ucm_mentor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ucm_mentor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ucm_mentor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ucm_mentor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ucm_mentor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ucm_mentor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ucm_mentor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ucm_mentor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ucm_mentor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ucm_mentor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ucm_mentor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ucm_mentor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ucm_mentor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ucm_mentor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ucm_mentor] SET  MULTI_USER 
GO
ALTER DATABASE [ucm_mentor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ucm_mentor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ucm_mentor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ucm_mentor] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ucm_mentor] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ucm_mentor]
GO
/****** Object:  User [Jrod9599]    Script Date: 4/4/2016 3:41:33 PM ******/
CREATE USER [Jrod9599] FOR LOGIN [Jrod9599] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Jrod9599]
GO
/****** Object:  Table [dbo].[History]    Script Date: 4/4/2016 3:41:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[History](
	[h_Year] [real] NULL,
	[h_Semester] [varchar](50) NULL,
	[h_MenteeName] [varchar](50) NULL,
	[h_MentorName] [varchar](50) NULL,
	[h_MenteeUserID] [real] NULL,
	[h_MentorUserID] [real] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mentees]    Script Date: 4/4/2016 3:41:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mentees](
	[mn_ID] [int] NULL,
	[mn_Choice] [varchar](50) NULL,
	[mn_MentorID] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mentor]    Script Date: 4/4/2016 3:41:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mentor](
	[m_ID] [int] NOT NULL,
	[m_Password] [varchar](50) NULL,
	[m_Nickname] [varchar](50) NULL,
	[m_NumMentees] [real] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/4/2016 3:41:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[u_ID] [int] NULL,
	[u_UserName] [varchar](50) NULL,
	[u_Name] [varchar](50) NULL,
	[u_email] [varchar](50) NULL,
	[u_phone] [varchar](50) NULL,
	[u_Position] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [ucm_mentor] SET  READ_WRITE 
GO
