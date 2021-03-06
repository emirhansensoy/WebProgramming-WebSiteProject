USE [master]
GO
/****** Object:  Database [WebSiteDB]    Script Date: 24.12.2021 20:41:29 ******/
CREATE DATABASE [WebSiteDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebSiteDB_Data', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebSiteDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebSiteDB_Log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebSiteDB.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebSiteDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebSiteDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebSiteDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebSiteDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebSiteDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebSiteDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebSiteDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebSiteDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebSiteDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebSiteDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebSiteDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebSiteDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebSiteDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebSiteDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebSiteDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebSiteDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebSiteDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebSiteDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebSiteDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebSiteDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebSiteDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebSiteDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebSiteDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebSiteDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebSiteDB] SET RECOVERY FULL 
GO
ALTER DATABASE [WebSiteDB] SET  MULTI_USER 
GO
ALTER DATABASE [WebSiteDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebSiteDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebSiteDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebSiteDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebSiteDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebSiteDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebSiteDB', N'ON'
GO
ALTER DATABASE [WebSiteDB] SET QUERY_STORE = OFF
GO
USE [WebSiteDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ImdbRating] [float] NOT NULL,
	[MovieStormRating] [float] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24.12.2021 20:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220100701_mg1', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220101327_mg12', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220101553_mg123', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220131910_mg3', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220151350_mg4', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220154634_mig5', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220154757_mig6', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220170453_mig7', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220184604_mig8', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220185332_mig9', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220201441_mig10', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221120455_migh', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221123505_migt', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223143520_mig111', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223143753_mig112', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223143854_mig113', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223144010_mig123', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223144354_mig1234', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223145453_mig12345', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223145743_mig123456', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223150857_mig124', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223152049_mig125', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223163854_mig126', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211224124808_qwe', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211224131337_qweqwe', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211224131515_qweqwe5', N'5.0.13')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'777739c1-180c-4cd6-879c-8276b6903821', N'Admin', N'ADMIN', N'e0b9fd77-5b49-424e-9183-2af7c20e492e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f8ce8670-bf74-43e5-be4c-f8337e59bc3b', N'User', N'USER', N'9594d231-ba60-49ca-b988-e437670a4da9')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7197240a-1c65-4515-8040-b78f90bb7186', N'777739c1-180c-4cd6-879c-8276b6903821')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8122e481-c106-4add-bbbf-0ae4bc15b86d', N'f8ce8670-bf74-43e5-be4c-f8337e59bc3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'984f80be-e855-4a4c-a5ae-2a88adf9734a', N'f8ce8670-bf74-43e5-be4c-f8337e59bc3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cc436354-845d-4676-82ff-8396ae57e2e4', N'f8ce8670-bf74-43e5-be4c-f8337e59bc3b')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [LastName], [Name]) VALUES (N'7197240a-1c65-4515-8040-b78f90bb7186', N'g191210040@sakarya.edu.tr', N'G191210040@SAKARYA.EDU.TR', N'g191210040@sakarya.edu.tr', N'G191210040@SAKARYA.EDU.TR', 1, N'AQAAAAEAACcQAAAAEEApa8MuR5dB1M3wOw381dyG9hCv2sgN2ec1ROo65YViEDLk7Yd02tsiNSCfvQTgeg==', N'7G6WZNBMHVZLL3OOUI4GTH4PU334MP3A', N'af3262a3-219f-4d81-b0df-79af7e903798', NULL, 0, 0, NULL, 1, 0, N'MyUser', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [LastName], [Name]) VALUES (N'8122e481-c106-4add-bbbf-0ae4bc15b86d', N'aykut@gmail.com', N'AYKUT@GMAIL.COM', N'aykut@gmail.com', N'AYKUT@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMbqVB6ZDWnbT8eKl/88dvvmilXIW7dEFSW+E9U+oXgxb5wBWiwR2eFC/H6SrPZPSw==', N'XM2I4UXAJREMXOMYWBUWXDLJ4G63UHJQ', N'a756928c-7605-4001-95bb-2196efb5a8ec', NULL, 0, 0, NULL, 1, 0, N'MyUser', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [LastName], [Name]) VALUES (N'984f80be-e855-4a4c-a5ae-2a88adf9734a', N'emirhan@gmail.com', N'EMIRHAN@GMAIL.COM', N'emirhan@gmail.com', N'EMIRHAN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBnAChRYF3bNm2tQslOtJ/A0CwQFkmfbl8qRhyPkx/1/Tf2XTTRIOo1OFLwsiMUxPw==', N'2TQYOLREF5ISHGZFA62T3UGWGLRHAVYH', N'adff5029-6e5b-4ea9-a8c9-a9bfff9596fc', NULL, 0, 0, NULL, 1, 0, N'MyUser', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [LastName], [Name]) VALUES (N'cc436354-845d-4676-82ff-8396ae57e2e4', N'emre@gmail.com', N'EMRE@GMAIL.COM', N'emre@gmail.com', N'EMRE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDJiJeof5O6pKC4l7W1gPrEeC2s7H4ZayV9EOGk94aVHKWVBC5MtgUAj1nqYX8Wf/w==', N'TRIDP7XPAY7WYKMH7QI4KYMOTG2B3BCX', N'7e424e32-0d31-4c60-b189-6e3a604f1a29', NULL, 0, 0, NULL, 1, 0, N'MyUser', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Mystery')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Action')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Comedy')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Drama')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Fantasy')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Horror')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Romance')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Thriller')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Western')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (10, N'Crime')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (11, N'Animation')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (12, N'Biography')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (13, N'Adventure')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (2, N'Memento', N'A man with short-term memory loss attempts to track down his wife''s murderer.', N'1.jpg', 1, 8.4, 8.3)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (3, N'The Hateful Eight', N'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.', N'2.jpg', 10, 7.8, 9)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (4, N'The Batman', N'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.', N'3.jpg', 2, 0, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (5, N'Spiderman: No Way Home', N'With Spider-Man''s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.', N'4.jpg', 2, 9, 8)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (6, N'Up', N'78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.', N'5.jpg', 11, 8.2, 8)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (7, N'Se7en', N'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', N'6.jpg', 10, 8.6, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (8, N'The Pianist', N'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', N'7.jpg', 12, 8.5, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (9, N'Django Unchained', N'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation-owner in Mississippi.', N'8.jpg', 4, 8.4, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (10, N'Inglourious Basterds', N'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner''s vengeful plans for the same.', N'9.jpg', 13, 8.3, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (11, N'Eternal Sunshine of the Spotless Mind', N'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.', N'10.jpg', 4, 8.3, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (12, N'Zodiac', N'Between 1968 and 1983, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.', N'11.jpg', 10, 7.7, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (13, N'Inception', N'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', N'12.jpg', 2, 8.8, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (14, N'Watchmen', N'In 1985 where former superheroes exist, the murder of a colleague sends active vigilante Rorschach into his own sprawling investigation, uncovering something that could completely change the course of history as we know it.', N'13.jpg', 2, 7.6, 7)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (15, N'Dune', N'Feature adaptation of Frank Herbert''s science fiction novel about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy.', N'14.jpg', 2, 8.2, 9)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (17, N'Fight Club', N'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.', N'15.jpg', 4, 8.8, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (18, N'The Dark Knight', N'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', N'16.jpg', 2, 9, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (19, N'Avengers: Endgame', N'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.', N'17.jpg', 2, 8.4, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (20, N'Spider-Man: Into the Spider-Verse', N'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.', N'18.jpg', 11, 8.4, 9)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (22, N'Joker', N'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.', N'19.jpg', 10, 8.4, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (23, N'Forrest Gump', N'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', N'20.jpg', 4, 8.8, 0)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (31, N'Taxi Driver', N'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.', N'21.jpg', 10, 8.2, 8)
INSERT [dbo].[Movies] ([Id], [Title], [Description], [ImageURL], [CategoryId], [ImdbRating], [MovieStormRating]) VALUES (32, N'Pulp Fiction', N'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', N'22.jpg', 10, 8.9, 0)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (78, N'emirhan@gmail.com', N'Great movie', 8, 2)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (79, N'emirhan@gmail.com', N'It was a great movie.', 8, 5)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (80, N'emirhan@gmail.com', N'Tarantino knows how to grab the attention of the audience.', 9, 3)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (81, N'emre@gmail.com', N'nice', 9, 2)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (82, N'emre@gmail.com', N'Good animations', 8, 6)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (83, N'emre@gmail.com', N'Scorsese masterpiece', 8, 31)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (84, N'emre@gmail.com', N'Best spiderman movie...', 9, 20)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (85, N'aykut@gmail.com', N'interesting', 8, 2)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (86, N'aykut@gmail.com', N'best movie of 2021!', 9, 15)
INSERT [dbo].[Reviews] ([Id], [UserName], [Comment], [Rating], [MovieId]) VALUES (87, N'aykut@gmail.com', N'nice one', 7, 14)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 24.12.2021 20:41:29 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 24.12.2021 20:41:29 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 24.12.2021 20:41:29 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 24.12.2021 20:41:29 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 24.12.2021 20:41:29 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 24.12.2021 20:41:29 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 24.12.2021 20:41:29 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Movies] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [ImdbRating]
GO
ALTER TABLE [dbo].[Movies] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [MovieStormRating]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((0)) FOR [MovieId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [WebSiteDB] SET  READ_WRITE 
GO
