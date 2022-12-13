GO
CREATE TABLE [dbo].[HangXuat](
	[MaHD] [nchar](10) NOT NULL,
	[MaVT] [nchar](10) NOT NULL,
	[DonGia] [money] NULL,
	[SLBan] [tinyint] NULL,
 CONSTRAINT [PK_HangXuat] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDBan]    Script Date: 13/12/2022 2:12:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDBan](
	[MaHD] [nchar](10) NOT NULL,
	[NgayXuat] [smalldatetime] NULL,
	[HoTenKhach] [nchar](40) NULL,
 CONSTRAINT [PK_HDBan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VatTu]    Script Date: 13/12/2022 2:12:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VatTu](
	[TenVT] [nchar](10) NULL,
	[MaVT] [nchar](10) NOT NULL,
	[DVTinh] [nchar](10) NULL,
	[SLCon] [smallint] NULL,
 CONSTRAINT [PK_VatTu] PRIMARY KEY CLUSTERED 
(
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HangXuat] ([MaHD], [MaVT], [DonGia], [SLBan]) VALUES (N'001       ', N'1a        ', 500.0000, 1)
INSERT [dbo].[HangXuat] ([MaHD], [MaVT], [DonGia], [SLBan]) VALUES (N'002       ', N'1b        ', 60000000.0000, 1)
INSERT [dbo].[HangXuat] ([MaHD], [MaVT], [DonGia], [SLBan]) VALUES (N'003       ', N'1a        ', 500.0000, 1)
INSERT [dbo].[HangXuat] ([MaHD], [MaVT], [DonGia], [SLBan]) VALUES (N'004       ', N'1b        ', 6000000.0000, 1)
GO
INSERT [dbo].[HDBan] ([MaHD], [NgayXuat], [HoTenKhach]) VALUES (N'001       ', CAST(N'2020-06-23T00:00:00' AS SmallDateTime), N'Nguyễn Văn A                            ')
INSERT [dbo].[HDBan] ([MaHD], [NgayXuat], [HoTenKhach]) VALUES (N'002       ', CAST(N'2021-11-15T00:00:00' AS SmallDateTime), N'nguyễn Thị B                            ')
GO
INSERT [dbo].[VatTu] ([TenVT], [MaVT], [DVTinh], [SLCon]) VALUES (N'Chuột MT  ', N'1a        ', N'cái       ', 569)
INSERT [dbo].[VatTu] ([TenVT], [MaVT], [DVTinh], [SLCon]) VALUES (N'Screen LG ', N'1b        ', N'cái       ', 352)