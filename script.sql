USE [csshop]
GO
/****** Object:  Table [dbo].[user]    Script Date: 03/24/2022 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](255) NULL,
	[user_password] [varchar](255) NULL,
	[user_email] [varchar](255) NULL,
	[user_phone] [varchar](255) NULL,
	[user_linkSteam] [varchar](255) NULL,
	[user_role] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON
INSERT [dbo].[user] ([user_id], [user_name], [user_password], [user_email], [user_phone], [user_linkSteam], [user_role]) VALUES (1, N'sktngochoan', N'ngochoan', N'sktngochoan', N'0869510922', N'https://steamcommunity.com/tradeoffer/new/?partner=1023043468&token=90C5nQUQ', 1)
INSERT [dbo].[user] ([user_id], [user_name], [user_password], [user_email], [user_phone], [user_linkSteam], [user_role]) VALUES (2, N'clone1', N'clone1', N'clone1', N'012345678921', N'https://steamcommunity.com/tradeoffer/new/?partner=2314043468&token=90C5nQUQ', 0)
INSERT [dbo].[user] ([user_id], [user_name], [user_password], [user_email], [user_phone], [user_linkSteam], [user_role]) VALUES (3, N'clone2', N'clone2', N'clone2@gmail.com', N'9876543210', N'https://steamcommunity.com/tradeoffer/new/?partner=23143131468&token=90C5nQUQ', 0)
INSERT [dbo].[user] ([user_id], [user_name], [user_password], [user_email], [user_phone], [user_linkSteam], [user_role]) VALUES (4, N'clone3', N'clone3', N'clone3@gmail.com', N'098375612', N'test', 0)
INSERT [dbo].[user] ([user_id], [user_name], [user_password], [user_email], [user_phone], [user_linkSteam], [user_role]) VALUES (5, N'clone4', N'clone4', N'clone4@gmail.com', N'124124123', N'test2', 0)
INSERT [dbo].[user] ([user_id], [user_name], [user_password], [user_email], [user_phone], [user_linkSteam], [user_role]) VALUES (6, N'clone5', N'clone5', N'clone5@gmai.com', N'1237523521', N'test3', 0)
SET IDENTITY_INSERT [dbo].[user] OFF
/****** Object:  Table [dbo].[Statistic]    Script Date: 03/24/2022 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistic](
	[view_Date] [date] NOT NULL,
	[view_Login] [int] NULL,
	[view_nonLogin] [int] NULL,
	[order] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[view_Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xA6430B00 AS Date), 22, 65, 6)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xA7430B00 AS Date), 17, 50, 3)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xA8430B00 AS Date), 12, 100, 9)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xA9430B00 AS Date), 10, 90, 9)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xAA430B00 AS Date), 19, 89, 10)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xAB430B00 AS Date), 32, 123, 8)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xAC430B00 AS Date), 12, 110, 4)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xAD430B00 AS Date), 36, 76, 10)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xAE430B00 AS Date), 20, 100, 8)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xAF430B00 AS Date), 65, 98, 5)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xB3430B00 AS Date), 37, 112, 4)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xB4430B00 AS Date), 44, 101, 62)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xB5430B00 AS Date), 57, 102, 1)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xB6430B00 AS Date), 12, 23, 3)
INSERT [dbo].[Statistic] ([view_Date], [view_Login], [view_nonLogin], [order]) VALUES (CAST(0xBB430B00 AS Date), 3, 5, 0)
/****** Object:  Table [dbo].[feedback]    Script Date: 03/24/2022 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[feedback_name] [nvarchar](255) NULL,
	[feedback_content] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[feedback] ON
INSERT [dbo].[feedback] ([feedback_id], [feedback_name], [feedback_content]) VALUES (1, N'Hoan', N'Test1')
SET IDENTITY_INSERT [dbo].[feedback] OFF
/****** Object:  Table [dbo].[category]    Script Date: 03/24/2022 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1, N'Knives')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (2, N'Gloves')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (3, N'Pistols')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (4, N'SMGs')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (5, N'Assault Rifles')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (6, N'Sniper Rifles')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (7, N'Shotguns')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (8, N'Machine guns')
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[order]    Script Date: 03/24/2022 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[price] [float] NULL,
	[note] [varchar](255) NULL,
	[date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (1, 2, 25734.160000000003, N'', CAST(0xB1430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (2, 6, 120923.18, N'love ^^!', CAST(0xB1430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (3, 2, 148201.41, N'', CAST(0xB2430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (4, 2, 16480.86, N'hi!!', CAST(0xB3430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (5, 2, 10063.880000000001, N'hello!!', CAST(0xB3430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (6, 2, 16085.660000000002, N'good !!', CAST(0xB3430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (7, 2, 8694.29, N'test', CAST(0xB4430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (8, 2, 10658.39, N'test2', CAST(0xB4430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (9, 1, 6021.78, N'ngochoan', CAST(0xB4430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (10, 1, 36963.16, N'gad', CAST(0xB0430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (11, 1, 17717.24, N'hi', CAST(0xB0430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (12, 1, 9240.79, N'sdas', CAST(0xB0430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (13, 1, 15262.57, N'das', CAST(0xAF430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (14, 1, 15262.57, N'dsa', CAST(0xAF430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (15, 1, 15262.57, N'dasd', CAST(0xAE430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (16, 1, 32167.520000000004, N'dasdafa', CAST(0xAE430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (17, 2, 69099.91, N'hello!!', CAST(0xB5430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (18, 1, 66520.82, N'fsdfs', CAST(0xB6430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (19, 2, 16480.86, N'helloo!!!', CAST(0xB6430B00 AS Date))
INSERT [dbo].[order] ([order_id], [user_id], [price], [note], [date]) VALUES (20, 1, 15262.57, N'das', CAST(0xB6430B00 AS Date))
SET IDENTITY_INSERT [dbo].[order] OFF
/****** Object:  Table [dbo].[skin]    Script Date: 03/24/2022 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[skin](
	[skin_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[skin_name] [varchar](255) NULL,
	[skin_status] [varchar](255) NULL,
	[skin_float] [float] NULL,
	[skin_stattrack] [bit] NULL,
	[skin_image] [varchar](255) NULL,
	[skin_quantity] [int] NULL,
	[skin_created_date] [date] NULL,
	[skin_price] [smallmoney] NULL,
PRIMARY KEY CLUSTERED 
(
	[skin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[skin] ON
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (1, 1, N'Karambit Knife-Doppler Sapphire', N'Factory New', 0.062, 0, N'KarambitKnifeDopplerSapphire.jpg', 12, CAST(0x33420B00 AS Date), 9790.0000)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (2, 1, N'Karambit Knife-Gamma Doppler Emerald', N' Factory New', 0.029, 1, N'KarambitKnifeGammaDopplerEmerald.jpg', 25, CAST(0x04420B00 AS Date), 9240.7900)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (3, 1, N'Butterfly Knife-Doppler Ruby', N'Factory New', 0.065, 1, N'ButterflyKnifeDopplerRuby.jpg', 42, CAST(0x41420B00 AS Date), 9977.2600)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (4, 1, N'Skeleton Knife-Fade', N'Factory New', 0.045, 0, N'SkeletonKnifeFade.jpg', 37, CAST(0x26420B00 AS Date), 1811.0300)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (5, 1, N'Navaja Knife-Safari Mesh', N'Factory New', 0.063, 1, N'NavajaKnifeSafariMesh.jpg', 18, CAST(0x27420B00 AS Date), 217.8400)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (6, 2, N'Sport Gloves-Amphibious', N'Factory New', 0.069, 0, N'SportGlovesAmphibious.jpg', 55, CAST(0x44420B00 AS Date), 8469.3500)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (7, 2, N'Sport Gloves-Vice', N'Minimal Wear', 0.124, 0, N'SportGlovesVice.jpg', 52, CAST(0x2C420B00 AS Date), 8035.0100)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (8, 2, N'Specialist Gloves-Fade', N'Factory New', 0.061, 0, N'SpecialistGlovesFade.jpg', 63, CAST(0x4A420B00 AS Date), 4636.6100)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (9, 2, N'Hand Wraps-CAUTION!', N'Factory New', 0.063, 1, N'HandWrapsCAUTION!.jpg', 44, CAST(0x37420B00 AS Date), 217.8400)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (10, 3, N'Glock-18-Fade', N'Minimal Wear', 0.073, 0, N'Glock18Fade.jpg', 31, CAST(0x30420B00 AS Date), 1234.2100)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (11, 3, N'Desert Eagle-Blaze', N'Minimal Wear', 0.079, 0, N'DesertEagleBlaze.jpg', 75, CAST(0x7C420B00 AS Date), 472.9800)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (12, 3, N'Five-SeveN-Hyper Beast', N'Factory New', 0.069, 1, N'FiveSeveNHyperBeast.jpg', 49, CAST(0x5A420B00 AS Date), 314.3300)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (13, 4, N'MP9-Wild Lily', N'Minimal Wear', 0.135, 0, N'MP9WildLily.jpg', 38, CAST(0x1E420B00 AS Date), 1218.2900)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (14, 4, N'MP5-SD-Oxide Oasis', N'Factory New', 0.057, 0, N'MP5SDOxideOasis.jpg', 27, CAST(0x32420B00 AS Date), 422.4300)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (15, 4, N'MAC-10-Stalker', N'Factory New', 0.068, 1, N'MAC10Stalker.jpg', 40, CAST(0x31420B00 AS Date), 235.2800)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (16, 5, N'AK-47-Fire Serpent', N'Factory New', 0.069, 1, N'AK47FireSerpent.jpg', 56, CAST(0xC6420B00 AS Date), 6474.4400)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (17, 5, N'AUG-Akihabara Accept', N'Factory New', 0.069, 0, N'AUGAkihabaraAccept.jpg', 59, CAST(0xD3420B00 AS Date), 6225.1400)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (18, 5, N'M4A4-Howl', N'Minimal Wear', 0.079, 0, N'M4A4Howl.jpg', 64, CAST(0xF2420B00 AS Date), 7142.1500)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (19, 5, N'AK-47-X-Ray', N'Factory New', 0.436, 0, N'AK47XRay.jpg', 62, CAST(0x10430B00 AS Date), 2917.5500)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (20, 5, N'M4A1-S-Knight', N'Factory New', 0.013, 0, N'M4A1SKnight.jpg', 41, CAST(0x4D430B00 AS Date), 2172.5800)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (21, 5, N'SG-553-Hazard Pay', N'Factory New', 0.042, 0, N'SG553HazardPay.jpg', 48, CAST(0x8A420B00 AS Date), 390.4500)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (22, 5, N'M4A4-Poseidon', N'Factory New', 0.001, 0, N'M4A4Poseidon.jpg', 83, CAST(0x6F420B00 AS Date), 2142.8500)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (23, 6, N'AWP-Gungnir', N'Field-Tested', 0.313, 0, N'AWPGungnir.jpg', 91, CAST(0x12420B00 AS Date), 6021.7800)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (24, 6, N'AWP-Dragon Lore', N'Field-Tested', 0.35, 0, N'AWPDragonLore.jpg', 77, CAST(0x52420B00 AS Date), 4924.0600)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (25, 6, N'SSG-08-Death Strike', N'Factory New', 0.066, 0, N'SSG08DeathStrike.jpg', 62, CAST(0x60430B00 AS Date), 285.6500)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (26, 7, N'MAG-7-Cinquedea', N'Factory New', 0.067, 0, N'MAG7Cinquedea.jpg', 83, CAST(0x39420B00 AS Date), 668.4300)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (27, 7, N'Sawed-Off-Copper', N'Well-Worn', 0.432, 0, N'SawedOffCopper.jpg', 71, CAST(0x3A420B00 AS Date), 80.1600)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (28, 7, N'XM1014-Frost Borre', N'Factory New', 0.002, 0, N'XM1014FrostBorre.jpg', 53, CAST(0xB3420B00 AS Date), 79.3700)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (29, 8, N'Negev-Mjolnir', N'Field-Tested', 0.269, 0, N'NegevMjolnir.jpg', 82, CAST(0x21420B00 AS Date), 1236.3800)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (30, 8, N'Negev-Power Loader', N'Factory New', 0.01, 0, N'NegevPowerLoader.jpg', 62, CAST(0x3C420B00 AS Date), 15.7100)
INSERT [dbo].[skin] ([skin_id], [category_id], [skin_name], [skin_status], [skin_float], [skin_stattrack], [skin_image], [skin_quantity], [skin_created_date], [skin_price]) VALUES (31, 8, N'M249-Nebula Crusader', N'Factory New', 0.001, 0, N'M249NebulaCrusader.jpg', 66, CAST(0x2E430B00 AS Date), 10.7100)
SET IDENTITY_INSERT [dbo].[skin] OFF
/****** Object:  Table [dbo].[order_detail]    Script Date: 03/24/2022 15:18:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[skin_name] [varchar](255) NULL,
	[skin_image] [varchar](255) NULL,
	[skin_price] [smallmoney] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (1, 1, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (2, 1, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (3, 1, N'MP9-Wild Lily', N'MP9WildLily.jpg', 1218.2900, 2)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (4, 1, N'Sport Gloves-Vice', N'SportGlovesVice.jpg', 8035.0100, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (5, 2, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 8)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (6, 2, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 6)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (7, 2, N'Skeleton Knife-Fade', N'SkeletonKnifeFade.jpg', 1811.0300, 6)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (8, 3, N'Glock-18-Fade', N'Glock18Fade.jpg', 1234.2100, 9)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (9, 3, N'Sport Gloves-Amphibious', N'SportGlovesAmphibious.jpg', 8469.3500, 8)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (10, 3, N'M4A1-S-Knight', N'M4A1SKnight.jpg', 2172.5800, 8)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (11, 3, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 8)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (12, 3, N'Desert Eagle-Blaze', N'DesertEagleBlaze.jpg', 472.9800, 8)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (13, 4, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (14, 4, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (15, 4, N'MP9-Wild Lily', N'MP9WildLily.jpg', 1218.2900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (16, 5, N'Skeleton Knife-Fade', N'SkeletonKnifeFade.jpg', 1811.0300, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (17, 5, N'Navaja Knife-Safari Mesh', N'NavajaKnifeSafariMesh.jpg', 217.8400, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (18, 5, N'Sport Gloves-Vice', N'SportGlovesVice.jpg', 8035.0100, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (19, 6, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (20, 6, N'Sport Gloves-Vice', N'SportGlovesVice.jpg', 8035.0100, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (21, 6, N'Navaja Knife-Safari Mesh', N'NavajaKnifeSafariMesh.jpg', 217.8400, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (22, 6, N'Skeleton Knife-Fade', N'SkeletonKnifeFade.jpg', 1811.0300, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (23, 7, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (24, 7, N'MP9-Wild Lily', N'MP9WildLily.jpg', 1218.2900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (25, 7, N'Negev-Mjolnir', N'NegevMjolnir.jpg', 1236.3800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (26, 7, N'Navaja Knife-Safari Mesh', N'NavajaKnifeSafariMesh.jpg', 217.8400, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (27, 8, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (28, 8, N'Specialist Gloves-Fade', N'SpecialistGlovesFade.jpg', 4636.6100, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (29, 9, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (30, 10, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 4)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (31, 11, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (32, 11, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (33, 11, N'MP9-Wild Lily', N'MP9WildLily.jpg', 1218.2900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (34, 11, N'Negev-Mjolnir', N'NegevMjolnir.jpg', 1236.3800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (35, 12, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (36, 13, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (37, 13, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (38, 14, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (39, 14, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (40, 15, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (41, 15, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (42, 16, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 2)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (43, 16, N'Skeleton Knife-Fade', N'SkeletonKnifeFade.jpg', 1811.0300, 3)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (44, 16, N'Navaja Knife-Safari Mesh', N'NavajaKnifeSafariMesh.jpg', 217.8400, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (45, 16, N'Sport Gloves-Vice', N'SportGlovesVice.jpg', 8035.0100, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (46, 17, N'Karambit Knife-Doppler Sapphire', N'KarambitKnifeDopplerSapphire.jpg', 9790.0000, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (47, 17, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 5)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (48, 17, N'Sport Gloves-Amphibious', N'SportGlovesAmphibious.jpg', 8469.3500, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (49, 17, N'Specialist Gloves-Fade', N'SpecialistGlovesFade.jpg', 4636.6100, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (50, 18, N'Butterfly Knife-Doppler Ruby', N'ButterflyKnifeDopplerRuby.jpg', 9977.2600, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (51, 18, N'Sport Gloves-Amphibious', N'SportGlovesAmphibious.jpg', 8469.3500, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (52, 18, N'Specialist Gloves-Fade', N'SpecialistGlovesFade.jpg', 4636.6100, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (53, 18, N'AK-47-Fire Serpent', N'AK47FireSerpent.jpg', 6474.4400, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (54, 18, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 4)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (55, 19, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (56, 19, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (57, 19, N'MP9-Wild Lily', N'MP9WildLily.jpg', 1218.2900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (58, 20, N'Karambit Knife-Gamma Doppler Emerald', N'KarambitKnifeGammaDopplerEmerald.jpg', 9240.7900, 1)
INSERT [dbo].[order_detail] ([id], [order_id], [skin_name], [skin_image], [skin_price], [quantity]) VALUES (59, 20, N'AWP-Gungnir', N'AWPGungnir.jpg', 6021.7800, 1)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
/****** Object:  Default [DF_order_date]    Script Date: 03/24/2022 15:18:55 ******/
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_date]  DEFAULT (getdate()) FOR [date]
GO
/****** Object:  ForeignKey [FK__order__user_id__1CF15040]    Script Date: 03/24/2022 15:18:55 ******/
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
/****** Object:  ForeignKey [FK__order_det__order__1FCDBCEB]    Script Date: 03/24/2022 15:18:55 ******/
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
/****** Object:  ForeignKey [FK__skin__category_i__1BFD2C07]    Script Date: 03/24/2022 15:18:55 ******/
ALTER TABLE [dbo].[skin]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
