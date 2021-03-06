USE [master]
GO
/****** Object:  Database [MusicApp]    Script Date: 3/15/2018 11:56:15 AM ******/
CREATE DATABASE [MusicApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MusicApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MusicApp.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MusicApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MusicApp_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MusicApp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MusicApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MusicApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MusicApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MusicApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MusicApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MusicApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [MusicApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MusicApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MusicApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MusicApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MusicApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MusicApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MusicApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MusicApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MusicApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MusicApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MusicApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MusicApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MusicApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MusicApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MusicApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MusicApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MusicApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MusicApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MusicApp] SET  MULTI_USER 
GO
ALTER DATABASE [MusicApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MusicApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MusicApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MusicApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MusicApp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MusicApp]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 3/15/2018 11:56:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[ArtistID] [int] NOT NULL,
	[ReleaseYear] [nvarchar](4) NOT NULL,
	[WonAward] [bit] NOT NULL,
	[AlbumPhoto] [nvarchar](200) NOT NULL,
	[BestHit] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artist]    Script Date: 3/15/2018 11:56:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[ArtistName] [nvarchar](200) NOT NULL,
	[ArtistPhoto] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (1, 1, N'2016', 0, N'/Content/images/nahkohoka.jpg', N'Love Letters to God')
INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (2, 1, N'2013', 0, N'/Content/images/nahkodarkasnight.jpg', N'Aloha')
INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (3, 1, N'2017', 0, N'/Content/images/nahkomynameisbear.jpg', N'Be Here Now')
INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (4, 3, N'1987', 1, N'/Content/images/u2joshuatree.jpg', N'One Tree Hill')
INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (5, 3, N'2009', 1, N'/Content/images/u2nolineonthehorizon.jpg', N'Magnificent')
INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (6, 3, N'2014', 1, N'/Content/images/u2songsofinnocence.jpg', N'Santa Barbara')
INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (7, 2, N'2009', 1, N'/Content/images/tempertrapconditions.jpg', N'Sweet Disposition ')
INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (8, 2, N'2012', 0, N'/Content/images/tempertraptempertrap.jpg', N'Need Your Love')
INSERT [dbo].[Album] ([AlbumID], [ArtistID], [ReleaseYear], [WonAward], [AlbumPhoto], [BestHit]) VALUES (9, 2, N'2016', 1, N'/Content/images/tempertrapthickastheives.jpg', N'So Much Sky')
SET IDENTITY_INSERT [dbo].[Album] OFF
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (1, N'Nahko', N'/Content/images/nahko.jpg')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (2, N'The Temper Trap', N'/Content/images/tempertrap.jpg')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (3, N'U2', N'/Content/images/U2.jpg')
SET IDENTITY_INSERT [dbo].[Artist] OFF
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ArtistID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artist]
GO
USE [master]
GO
ALTER DATABASE [MusicApp] SET  READ_WRITE 
GO
