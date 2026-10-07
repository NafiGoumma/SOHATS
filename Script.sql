USE [master]
GO
CREATE DATABASE [SOHATS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SOHATS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SOHATS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SOHATS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SOHATS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SOHATS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SOHATS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SOHATS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SOHATS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SOHATS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SOHATS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SOHATS] SET ARITHABORT OFF 
GO
ALTER DATABASE [SOHATS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SOHATS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SOHATS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SOHATS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SOHATS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SOHATS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SOHATS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SOHATS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SOHATS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SOHATS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SOHATS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SOHATS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SOHATS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SOHATS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SOHATS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SOHATS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SOHATS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SOHATS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SOHATS] SET  MULTI_USER 
GO
ALTER DATABASE [SOHATS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SOHATS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SOHATS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SOHATS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SOHATS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SOHATS] SET QUERY_STORE = OFF
GO
USE [SOHATS]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cikis](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dosyano] [int] NOT NULL,
	[sevktarihi] [nvarchar](10) NOT NULL,
	[cikissaati] [datetime] NULL,
	[odeme] [nvarchar](20) NULL,
	[toplamtutar] [nvarchar](20) NULL,
 CONSTRAINT [PK_cikis] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hasta](
	[tckimlikno] [nvarchar](11) NOT NULL,
	[dosyano] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](15) NULL,
	[soyad] [nvarchar](15) NULL,
	[dogumyeri] [nvarchar](15) NULL,
	[dogumtarihi] [datetime] NULL,
	[babaadi] [nvarchar](15) NULL,
	[anneadi] [nvarchar](15) NULL,
	[cinsiyet] [nvarchar](5) NULL,
	[kangrubu] [nvarchar](5) NULL,
	[medenihal] [nvarchar](5) NULL,
	[adres] [nvarchar](255) NULL,
	[tel] [nvarchar](11) NULL,
	[kurumsicilno] [nvarchar](10) NULL,
	[kurumadi] [nvarchar](50) NULL,
	[yakintel] [nvarchar](11) NULL,
	[yakinkurumsicilno] [nvarchar](10) NULL,
	[yakinkurumadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_hasta] PRIMARY KEY CLUSTERED 
(
	[tckimlikno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[islem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[islemAdi] [nvarchar](50) NULL,
	[birimFiyat] [nvarchar](50) NULL,
 CONSTRAINT [PK_islem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici](
	[kodu] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](20) NULL,
	[soyad] [nvarchar](20) NULL,
	[sifre] [nvarchar](20) NULL,
	[yetki] [nvarchar](5) NULL,
	[evtel] [nvarchar](11) NULL,
	[ceptel] [nvarchar](11) NULL,
	[adres] [nvarchar](255) NULL,
	[unvan] [nvarchar](15) NULL,
	[isebaslama] [datetime] NULL,
	[maas] [nvarchar](20) NULL,
	[dogumyeri] [nvarchar](50) NULL,
	[annead] [nvarchar](20) NULL,
	[babaad] [nvarchar](20) NULL,
	[cinsiyet] [nvarchar](5) NULL,
	[kangrubu] [nvarchar](10) NULL,
	[medenihal] [nvarchar](10) NULL,
	[dogumtarihi] [datetime] NULL,
	[tckimlikno] [nvarchar](11) NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_kullanici] PRIMARY KEY CLUSTERED 
(
	[kodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poliklinik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[poliklinikadi] [nvarchar](50) NULL,
	[durum] [nvarchar](5) NULL,
	[aciklama] [nvarchar](255) NULL,
 CONSTRAINT [PK_poliklinik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sevk](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sevktarihi] [datetime] NOT NULL,
	[dosyano] [nvarchar](50) NOT NULL,
	[poliklinik] [nvarchar](50) NULL,
	[saat] [nvarchar](10) NULL,
	[yapilanislem] [nvarchar](50) NULL,
	[drkod] [char](10) NULL,
	[miktar] [char](3) NULL,
	[birimfiyat] [nvarchar](20) NULL,
	[sira] [nvarchar](3) NULL,
	[toplamtutar] [nvarchar](50) NULL,
	[taburcu] [nvarchar](50) NULL,
 CONSTRAINT [PK_sevk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cikis] ON 

INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (1, 1, N'25.12.2025', CAST(N'2025-12-25T00:00:00.000' AS DateTime), N'Nakit', N'30')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (2, 1, N'26.12.2025', CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'Kredi Kartý', N'30')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (3, 2, N'28.12.2025', CAST(N'2025-12-28T14:00:00.000' AS DateTime), N'Nakit', N'20')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (4, 1, N'21.12.2025', CAST(N'2025-12-21T23:17:27.580' AS DateTime), N'Nakit', N'15 TL')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (5, 1, N'23.12.2025', CAST(N'2025-12-23T11:35:57.297' AS DateTime), N'Nakit', N'310 TL')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (6, 1, N'23.12.2025', CAST(N'2025-12-23T11:37:30.763' AS DateTime), N'Kredi Kartý - Taksit', N'310 TL')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (7, 1, N'23.12.2025', CAST(N'2025-12-23T11:41:40.630' AS DateTime), N'K. Kartý - Tek Çekim', N'310 TL')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (8, 1, N'23.12.2025', CAST(N'2025-12-23T11:44:09.003' AS DateTime), N'Kredi Kartý - Taksit', N'310 TL')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (9, 1, N'23.12.2025', CAST(N'2025-12-23T11:49:42.203' AS DateTime), N'K. Kartý - Tek Çekim', N'310 TL')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (10, 2, N'23.12.2025', CAST(N'2025-12-23T12:25:11.970' AS DateTime), N'Nakit', N'45 TL')
INSERT [dbo].[cikis] ([id], [dosyano], [sevktarihi], [cikissaati], [odeme], [toplamtutar]) VALUES (11, 3, N'23.12.2025', CAST(N'2025-12-23T12:39:19.447' AS DateTime), N'K. Kartý - Tek Çekim', N'60 TL')
SET IDENTITY_INSERT [dbo].[cikis] OFF
SET IDENTITY_INSERT [dbo].[hasta] ON 

INSERT [dbo].[hasta] ([tckimlikno], [dosyano], [ad], [soyad], [dogumyeri], [dogumtarihi], [babaadi], [anneadi], [cinsiyet], [kangrubu], [medenihal], [adres], [tel], [kurumsicilno], [kurumadi], [yakintel], [yakinkurumsicilno], [yakinkurumadi]) VALUES (N'23454321123', 1, N'Hasan', N'Cece', N'XxXxX', CAST(N'2019-12-20T00:00:00.000' AS DateTime), N'Semih', N'Sevde', N'BAY', N'B Rh+', N'EVLÝ', N'Kocaeli', NULL, N'111111', NULL, NULL, NULL, NULL)
INSERT [dbo].[hasta] ([tckimlikno], [dosyano], [ad], [soyad], [dogumyeri], [dogumtarihi], [babaadi], [anneadi], [cinsiyet], [kangrubu], [medenihal], [adres], [tel], [kurumsicilno], [kurumadi], [yakintel], [yakinkurumsicilno], [yakinkurumadi]) VALUES (N'74185296341', 3, N'Erdal', N'Kýsa', N'Türkiye', CAST(N'2019-12-23T00:00:00.000' AS DateTime), N'Hakan', N'Seda', N'BAYAN', N'B Rh-', N'BEKAR', N'Balýkesir', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[hasta] ([tckimlikno], [dosyano], [ad], [soyad], [dogumyeri], [dogumtarihi], [babaadi], [anneadi], [cinsiyet], [kangrubu], [medenihal], [adres], [tel], [kurumsicilno], [kurumadi], [yakintel], [yakinkurumsicilno], [yakinkurumadi]) VALUES (N'74185296352', 2, N'Ahmet', N'Kaya', N'Konya', CAST(N'2019-12-21T00:00:00.000' AS DateTime), N'Eray', N'Ecrin', N'BAY', N'B Rh+', N'BEKAR', N'Ýstanbul', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[hasta] ([tckimlikno], [dosyano], [ad], [soyad], [dogumyeri], [dogumtarihi], [babaadi], [anneadi], [cinsiyet], [kangrubu], [medenihal], [adres], [tel], [kurumsicilno], [kurumadi], [yakintel], [yakinkurumsicilno], [yakinkurumadi]) VALUES (N'98798798798', 4, N'Mustafa', N'Çakmak', N'Kocaeli', CAST(N'2019-12-23T00:00:00.000' AS DateTime), N'Ahmet', N'Lale', N'BAY', N'0 Rh+', N'BEKAR', N'Kastamonu', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[hasta] OFF
SET IDENTITY_INSERT [dbo].[islem] ON 

INSERT [dbo].[islem] ([id], [islemAdi], [birimFiyat]) VALUES (1, N'a tahlil', N'15')
INSERT [dbo].[islem] ([id], [islemAdi], [birimFiyat]) VALUES (2, N'b tahlil', N'30')
INSERT [dbo].[islem] ([id], [islemAdi], [birimFiyat]) VALUES (3, N'c tahlil', N'60')
INSERT [dbo].[islem] ([id], [islemAdi], [birimFiyat]) VALUES (4, N'yeni iþlem', N'25')
INSERT [dbo].[islem] ([id], [islemAdi], [birimFiyat]) VALUES (5, N'muayene', N'50')
INSERT [dbo].[islem] ([id], [islemAdi], [birimFiyat]) VALUES (6, N'kan tahlili', N'15')
SET IDENTITY_INSERT [dbo].[islem] OFF
SET IDENTITY_INSERT [dbo].[kullanici] ON 

INSERT [dbo].[kullanici] ([kodu], [ad], [soyad], [sifre], [yetki], [evtel], [ceptel], [adres], [unvan], [isebaslama], [maas], [dogumyeri], [annead], [babaad], [cinsiyet], [kangrubu], [medenihal], [dogumtarihi], [tckimlikno], [username]) VALUES (1, N'ALÝ', N'KAYA', N'212121', N'True', N'2415623', N'0535652547', N'asflsdkgm dkmdlgs', N'Doktor', CAST(N'2005-11-27T00:00:00.000' AS DateTime), N'1500', N'ERZURUM', N'HATICE', N'HAMZA', N'BAY', N'A Rh+', N'BEKAR', CAST(N'1965-12-23T00:00:00.000' AS DateTime), N'21548732655', N'k1')
INSERT [dbo].[kullanici] ([kodu], [ad], [soyad], [sifre], [yetki], [evtel], [ceptel], [adres], [unvan], [isebaslama], [maas], [dogumyeri], [annead], [babaad], [cinsiyet], [kangrubu], [medenihal], [dogumtarihi], [tckimlikno], [username]) VALUES (2, N'Hakký', N'Kaya', N'123', N'false', N'22222222222', N'dfldlf', N'AAAAAA', N'Saðlýk Personel', CAST(N'1999-09-09T00:00:00.000' AS DateTime), N'', N'DENIZLI', N'AYSUN', N'MEHMET', N'BAYAN', N'A Rh-', N'BEKAR', CAST(N'1970-05-09T00:00:00.000' AS DateTime), N'212121', N'k2')
INSERT [dbo].[kullanici] ([kodu], [ad], [soyad], [sifre], [yetki], [evtel], [ceptel], [adres], [unvan], [isebaslama], [maas], [dogumyeri], [annead], [babaad], [cinsiyet], [kangrubu], [medenihal], [dogumtarihi], [tckimlikno], [username]) VALUES (3, N'Adem', N'Uluz', N'456', N'False', NULL, NULL, NULL, N'Saðlýk Personel', CAST(N'1995-07-12T00:00:00.000' AS DateTime), NULL, NULL, N'Sevim', N'Mustafa', NULL, NULL, NULL, CAST(N'1980-12-12T00:00:00.000' AS DateTime), NULL, N'k3')
INSERT [dbo].[kullanici] ([kodu], [ad], [soyad], [sifre], [yetki], [evtel], [ceptel], [adres], [unvan], [isebaslama], [maas], [dogumyeri], [annead], [babaad], [cinsiyet], [kangrubu], [medenihal], [dogumtarihi], [tckimlikno], [username]) VALUES (4, N'Hakan', N'Anýl', N'123', N'false', N'', N'', N'', N'', CAST(N'2019-12-26T22:26:55.000' AS DateTime), N'', N'', N'Kübra', N'Fatih', N'', N'', N'', CAST(N'2019-12-26T22:26:55.000' AS DateTime), N'', N'user')
INSERT [dbo].[kullanici] ([kodu], [ad], [soyad], [sifre], [yetki], [evtel], [ceptel], [adres], [unvan], [isebaslama], [maas], [dogumyeri], [annead], [babaad], [cinsiyet], [kangrubu], [medenihal], [dogumtarihi], [tckimlikno], [username]) VALUES (6, N'Hasan', N'Kale', N'123456789', N'true', N'02414141875', N'05441455214', N'Kampüs', N'Doktor', CAST(N'2010-12-12T00:00:00.000' AS DateTime), N'9000', N'ANKARA', N'Betül', N'Atilla', N'BAY', N'A Rh+', N'BEKAR', CAST(N'1995-12-12T00:00:00.000' AS DateTime), N'12121212121', N'MUDUR')
INSERT [dbo].[kullanici] ([kodu], [ad], [soyad], [sifre], [yetki], [evtel], [ceptel], [adres], [unvan], [isebaslama], [maas], [dogumyeri], [annead], [babaad], [cinsiyet], [kangrubu], [medenihal], [dogumtarihi], [tckimlikno], [username]) VALUES (7, N'Kemal', N'Yavuz', N'123654', N'false', N'03627485215', N'05468645542', N'', N'', CAST(N'1995-07-12T22:45:00.000' AS DateTime), N'', N'Konya', N'Emine', N'Halil', N'', N'', N'', CAST(N'1980-12-12T22:45:00.000' AS DateTime), N'74125896322', N'gonyali')
INSERT [dbo].[kullanici] ([kodu], [ad], [soyad], [sifre], [yetki], [evtel], [ceptel], [adres], [unvan], [isebaslama], [maas], [dogumyeri], [annead], [babaad], [cinsiyet], [kangrubu], [medenihal], [dogumtarihi], [tckimlikno], [username]) VALUES (8, N'Þerife', N'Bacý', N'123', N'false', N'04645654654', N'03453456445', N'Kastamonu', N'Doktor', CAST(N'1995-07-12T22:45:00.000' AS DateTime), N'50000', N'Kastamonu', N'Ayþe', N'Hüseyin', N'BAYAN', N'AB Rh+', N'EVLÝ', CAST(N'1900-12-12T22:45:00.000' AS DateTime), N'45349534985', N'kas')
SET IDENTITY_INSERT [dbo].[kullanici] OFF
SET IDENTITY_INSERT [dbo].[poliklinik] ON 

INSERT [dbo].[poliklinik] ([id], [poliklinikadi], [durum], [aciklama]) VALUES (2, N'Poliklinik 2', N'True', N'Falan Filan Poliklinik')
INSERT [dbo].[poliklinik] ([id], [poliklinikadi], [durum], [aciklama]) VALUES (3, N'Poliklinik 3', N'true', NULL)
INSERT [dbo].[poliklinik] ([id], [poliklinikadi], [durum], [aciklama]) VALUES (4, N'Poliklinik 4', N'false', NULL)
INSERT [dbo].[poliklinik] ([id], [poliklinikadi], [durum], [aciklama]) VALUES (5, N'Poli', N'True', NULL)
INSERT [dbo].[poliklinik] ([id], [poliklinikadi], [durum], [aciklama]) VALUES (7, N'Poliklinik 5', N'True', N'Yeni Poliklinik 5')
INSERT [dbo].[poliklinik] ([id], [poliklinikadi], [durum], [aciklama]) VALUES (8, N'KBB', N'True', NULL)
INSERT [dbo].[poliklinik] ([id], [poliklinikadi], [durum], [aciklama]) VALUES (10, N'sadasd', N'True', N'')
INSERT [dbo].[poliklinik] ([id], [poliklinikadi], [durum], [aciklama]) VALUES (11, N'aaaa', N'True', NULL)
SET IDENTITY_INSERT [dbo].[poliklinik] OFF
SET IDENTITY_INSERT [dbo].[sevk] ON 

INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (1, CAST(N'2025-12-25T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'11:11', N'a tahlili', N'1         ', N'1  ', N'5', N'1', N'1', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (2, CAST(N'2025-12-25T00:00:00.000' AS DateTime), N'1', N'Poliklinik 3', N'10:40', N'b talili', N'1         ', N'1  ', N'10', N'1', N'10', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (3, CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'1', N'Poliklinik 4', N'10:10', N'a tahlili', N'6         ', N'1  ', N'5', N'1', N'5', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (4, CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'2', N'Poliklinik 4', N'15:15', N'c tahlili', N'6         ', N'1  ', N'2', N'1', N'2', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (5, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'20:25', N'c tahlil', N'1         ', N'1  ', N'60', N'2', N'60', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (6, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 3', N'20:32', N'b tahlil', N'1         ', N'1  ', N'30', N'2', N'30', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (7, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'20:32', N'c tahlil', N'1         ', N'1  ', N'60', N'3', N'60', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (8, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'20:33', N'a tahlil', N'1         ', N'1  ', N'15', N'4', N'15', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (9, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'20:33', N'c tahlil', N'6         ', N'1  ', N'60', N'5', N'60', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (10, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'20:46', N'b tahlil', N'6         ', N'1  ', N'30', N'6', N'30', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (11, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 5', N'20:46', N'yeni iþlem', N'6         ', N'1  ', N'25', N'1', N'25', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (12, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'22:13', N'a tahlil', N'1         ', N'1  ', N'15', N'7', N'15', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (13, CAST(N'2025-12-21T00:00:00.000' AS DateTime), N'1', N'Poliklinik 3', N'22:16', N'a tahlil', N'1         ', N'1  ', N'15', N'3', N'15', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (15, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'9:59', N'a tahlil', N'1         ', N'1  ', N'15', N'1', N'15', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (16, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'10:28', N'a tahlil', N'1         ', N'1  ', N'15', N'2', N'15', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (17, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'1', N'Poliklinik 3', N'11:56', N'c tahlil', N'6         ', N'1  ', N'60', N'1', N'60', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (18, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'1', N'Poliklinik 3', N'12:0', N'c tahlil', N'1         ', N'1  ', N'60', N'2', N'60', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (19, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'1', N'Poliklinik 5', N'12:11', N'b tahlil', N'1         ', N'1  ', N'30', N'1', N'30', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (20, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'2', N'Poliklinik 2', N'12:14', N'a tahlil', N'1         ', N'1  ', N'15', N'3', N'15', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (21, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'2', N'Poliklinik 3', N'12:18', N'b tahlil', N'6         ', N'1  ', N'30', N'3', N'30', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (22, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'3', N'Poliklinik 2', N'12:27', N'c tahlil', N'1         ', N'1  ', N'60', N'4', N'60', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (23, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'3', N'Poliklinik 3', N'12:34', N'muayene', N'1         ', N'1  ', N'50', N'4', N'50', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (24, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'3', N'Poliklinik 5', N'12:38', N'c tahlil', N'1         ', N'1  ', N'60', N'2', N'60', N'True')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (25, CAST(N'2025-12-23T00:00:00.000' AS DateTime), N'4', N'Poliklinik 2', N'12:51', N'c tahlil', N'6         ', N'1  ', N'60', N'5', N'60', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (26, CAST(N'2025-12-25T00:00:00.000' AS DateTime), N'3', N'Poliklinik 2', N'22:16', N'b tahlil', N'1         ', N'1  ', N'30', N'1', N'30', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (27, CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'3', N'Poliklinik 3', N'12:13', N'b tahlil', N'1         ', N'1  ', N'30', N'1', N'30', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (28, CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'22:28', N'c tahlil', N'1         ', N'1  ', N'60', N'1', N'60', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (29, CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'1', N'Poliklinik 3', N'22:29', N'c tahlil', N'1         ', N'1  ', N'60', N'2', N'60', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (30, CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'1', N'Poliklinik 3', N'23:53', N'c tahlil', N'6         ', N'1  ', N'60', N'3', N'60', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (31, CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'1', N'Poliklinik 2', N'23:53', N'b tahlil', N'6         ', N'1  ', N'30', N'2', N'30', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (32, CAST(N'2025-12-26T00:00:00.000' AS DateTime), N'3', N'Poliklinik 3', N'23:54', N'b tahlil', N'8         ', N'1  ', N'30', N'4', N'30', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (33, CAST(N'2025-12-27T00:00:00.000' AS DateTime), N'2', N'KBB', N'0:2', N'a tahlil', N'1         ', N'1  ', N'15', N'1', N'15', N'False')
INSERT [dbo].[sevk] ([id], [sevktarihi], [dosyano], [poliklinik], [saat], [yapilanislem], [drkod], [miktar], [birimfiyat], [sira], [toplamtutar], [taburcu]) VALUES (34, CAST(N'2025-12-27T00:00:00.000' AS DateTime), N'2', N'KBB', N'0:3', N'a tahlil', N'1         ', N'1  ', N'15', N'1', N'15', N'False')
SET IDENTITY_INSERT [dbo].[sevk] OFF
USE [master]
GO
ALTER DATABASE [SOHATS] SET  READ_WRITE 
GO
