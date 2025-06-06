Create database [WebBanHangDB]
GO
USE [WebBanHangDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05/26/2025 7:43:55 AM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 05/26/2025 7:43:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 05/26/2025 7:43:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250514034159_KhoiTao', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250514041657_SeedDataToTable', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (1, N'Điện thoại', 1)
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (2, N'Máy tính bảng', 2)
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (3, N'Laptop', 3)
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (5, N'Phụ kiện', 4)
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (6, N'Thời trang', 6)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (1, N'Iphone 7', NULL, 300, 1, N'images/products/9cc468fd-7810-4608-9fed-12ccc67fcadf.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (2, N'Iphone 7s', NULL, 350, 1, N'images/products/be9ae80a-ec47-4d7e-aff1-664fdced28aa.webp')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (3, N'Iphone 8', NULL, 400, 1, N'images/products/c338c493-9883-412c-841f-a6d676faede9.webp')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (4, N'Iphone 8s', NULL, 420, 1, N'images/products/448bb3fe-8524-4dfa-9903-31694febe162.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (5, N'Iphone 12', NULL, 630, 1, N'images/products/7a5353a9-2b93-4a53-89b9-d15f28091547.webp')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (6, N'Iphone 12 Pro', NULL, 750, 1, N'images/products/6a0f1121-06ba-400c-bc8c-420eb3ada944.webp')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (7, N'Iphone 14', NULL, 820, 1, N'images/products/379d45c7-f200-4784-bc62-f53686754729.png')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (8, N'Iphone 14 Pro', NULL, 950, 1, N'images/products/af9c9d79-338c-4d7f-92b5-031b8a056fcf.webp')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (9, N'Iphone 15', NULL, 1200, 1, N'images/products/c8bd5ac1-8d1c-4336-80f0-db2cff58dd27.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (10, N'Iphone 15 Pro Max ', NULL, 1450, 1, N'images/products/8ebfb0a7-be78-4dcd-a358-82547c564524.png')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (11, N'Ipad Gen 10', NULL, 750, 2, N'images/products/f7365eed-670f-4380-962f-65e1d855f3d0.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (12, N'Ipad Pro 12', NULL, 1250, 2, N'images/products/c60710e8-72bb-46cc-8557-71f409218fe1.jpeg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (13, N'Cáp sạc iphone 14', NULL, 120, 5, N'images/products/0c6a5fea-0a63-4bab-aec7-726c6bef4fc5.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (14, N'Iphone 14 Pro', NULL, 750, 1, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
