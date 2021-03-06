USE [master]
GO
/****** Object:  Database [GoPASTA]    Script Date: 2021/7/16 下午 02:20:51 ******/
CREATE DATABASE [GoPASTA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GoPASTA', FILENAME = N'C:\Users\Public\Documents\DataBase\GoPASTA\GoPASTA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GoPASTA_log', FILENAME = N'C:\Users\Public\Documents\DataBase\GoPASTA\GoPASTA_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GoPASTA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GoPASTA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GoPASTA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GoPASTA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GoPASTA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GoPASTA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GoPASTA] SET ARITHABORT OFF 
GO
ALTER DATABASE [GoPASTA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GoPASTA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GoPASTA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GoPASTA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GoPASTA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GoPASTA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GoPASTA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GoPASTA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GoPASTA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GoPASTA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GoPASTA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GoPASTA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GoPASTA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GoPASTA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GoPASTA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GoPASTA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GoPASTA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GoPASTA] SET RECOVERY FULL 
GO
ALTER DATABASE [GoPASTA] SET  MULTI_USER 
GO
ALTER DATABASE [GoPASTA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GoPASTA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GoPASTA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GoPASTA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GoPASTA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GoPASTA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GoPASTA', N'ON'
GO
ALTER DATABASE [GoPASTA] SET QUERY_STORE = OFF
GO
USE [GoPASTA]
GO
/****** Object:  Table [dbo].[About]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[sortid] [int] NULL,
	[corevalue_title] [nchar](50) NULL,
	[corevalue_descpt] [nchar](250) NULL,
	[about_path] [nchar](50) NULL,
	[corevalue_path] [nchar](50) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[cart_lotno] [nvarchar](50) NULL,
	[mno] [nvarchar](50) NULL,
	[product_no] [nvarchar](50) NULL,
	[Property_select] [nvarchar](50) NULL,
	[qty] [int] NULL,
	[create_time] [datetime] NULL,
	[each_item_amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[parentid] [int] NULL,
	[category_no] [nvarchar](50) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[brandname] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[opentime] [time](0) NULL,
	[closetime] [time](0) NULL,
	[public_holiday] [nvarchar](50) NULL,
	[logoimage_path] [nvarchar](50) NULL,
	[indeximage_path] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_companyinfo] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MealService]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MealService](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[mealservice_no] [nvarchar](50) NULL,
	[mealservice_name] [nvarchar](50) NULL,
	[remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Shippings] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](50) NULL,
	[order_date] [datetime] NULL,
	[mno] [nvarchar](50) NULL,
	[discount_rate] [decimal](18, 4) NULL,
	[taxs] [decimal](18, 4) NULL,
	[total] [decimal](18, 4) NULL,
	[orderstatus_no] [nvarchar](50) NULL,
	[mealservice_no] [nvarchar](50) NULL,
	[SchedulOrderTime] [datetime] NOT NULL,
	[table_no] [nvarchar](50) NULL,
	[paid_no] [nvarchar](50) NULL,
	[receive_name] [nvarchar](50) NULL,
	[receive_phone] [nvarchar](50) NULL,
	[receive_address] [nvarchar](250) NULL,
	[isclosed] [bit] NULL,
	[ispaided] [bit] NULL,
	[order_guid] [nvarchar](50) NULL,
	[cancelorder] [bit] NULL,
	[cancelreason] [nvarchar](50) NULL,
	[remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersDetails]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetails](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](50) NOT NULL,
	[product_no] [nvarchar](50) NULL,
	[Property_select] [nvarchar](50) NULL,
	[each_item_amount] [int] NULL,
	[qty] [int] NULL,
	[discount_rate] [decimal](18, 4) NULL,
	[remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_OrdersDetail_1] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[orderstatus_no] [nvarchar](50) NOT NULL,
	[orderstatus_name] [nvarchar](50) NULL,
	[remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[orderstatus_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[paid_no] [nvarchar](50) NULL,
	[paid_name] [nvarchar](50) NULL,
	[remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_no] [nvarchar](50) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[product_spec] [nvarchar](250) NULL,
	[category_no] [nvarchar](50) NULL,
	[price_avgcost] [int] NULL,
	[price_sale] [int] NULL,
	[discount_price] [int] NULL,
	[stock_qty] [int] NULL,
	[image_path] [nvarchar](50) NULL,
	[description] [nvarchar](250) NULL,
	[browse_count] [int] NULL,
	[istop] [bit] NULL,
	[issale] [bit] NULL,
	[ishot] [bit] NULL,
	[remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[product_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsProperty]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsProperty](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[product_no] [nvarchar](50) NULL,
	[Property_no] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductsProperty] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramList]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramList](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[parentid] [int] NULL,
	[filter_role] [nvarchar](50) NULL,
	[pro_no] [nvarchar](50) NULL,
	[pro_name] [nvarchar](50) NULL,
	[controller_name] [nvarchar](50) NULL,
	[action_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProgramList] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Propertys]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propertys](
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[property_no] [nvarchar](50) NULL,
	[property_name] [nvarchar](50) NULL,
	[add_price] [int] NULL,
	[property_value] [nvarchar](50) NULL,
	[remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Propertys] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_no] [nvarchar](50) NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
	[remark] [nvarchar](250) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[role_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[mno] [nvarchar](50) NULL,
	[mname] [nvarchar](50) NULL,
	[account_name] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[id] [nvarchar](50) NULL,
	[birthday] [datetime] NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[role_no] [nvarchar](50) NULL,
	[varify_code] [nvarchar](50) NULL,
	[isvarify] [bit] NULL,
	[isvalidate] [bit] NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[account_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([rowid], [sortid], [corevalue_title], [corevalue_descpt], [about_path], [corevalue_path]) VALUES (1, 1, N'健康                                                ', N'在這裡，我們為客戶的健康把關，原物料進貨前物料商皆需提出SGS檢驗合格證書，就為了讓客戶吃的安心。                                                                                                                                                                                                         ', N'../../img/about/at1.jpg                           ', N'../../img/about/val1.jpg                          ')
INSERT [dbo].[About] ([rowid], [sortid], [corevalue_title], [corevalue_descpt], [about_path], [corevalue_path]) VALUES (2, 2, N'清潔                                                ', N'在這裡，我們所有的店內設備和食材，都確保安全和清潔，就為了給您提供一個安心的飲食。                                                                                                                                                                                                                 ', N'../../img/about/at2.jpg                           ', N'../../img/about/val2.jpg                          ')
INSERT [dbo].[About] ([rowid], [sortid], [corevalue_title], [corevalue_descpt], [about_path], [corevalue_path]) VALUES (3, 3, N'品質                                                ', N'在這裡，我們有著最佳的品質，我們不斷進口國外優質原料，同樣的，我們採用最佳的設備和先進的技術，以保證其高品質。                                                                                                                                                                                                   ', N'../../img/about/at3.jpg                           ', N'../../img/about/val3.jpg                          ')
INSERT [dbo].[About] ([rowid], [sortid], [corevalue_title], [corevalue_descpt], [about_path], [corevalue_path]) VALUES (4, 4, N'服務                                                ', N'在這裡，我們有著最優質的服務，我們每一位員工都以最甜美的微笑去迎接顧客，讓顧客們感到一種賓至如歸的感覺。                                                                                                                                                                                                      ', N'../../img/about/at4.jpg                           ', N'../../img/about/val4.jpg                          ')
SET IDENTITY_INSERT [dbo].[About] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (14, N'F2CF2B01-8596-4', N'002', N'A020002', N'', 1, CAST(N'2021-06-06T00:19:41.000' AS DateTime), 350)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (23, N'8A3ECF10-6347-4', N'', N'C010001', N'冰塊 : 少冰 ', 1, CAST(N'2021-06-11T22:08:48.000' AS DateTime), 50)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (24, N'8A3ECF10-6347-4', N'', N'C010002', N'', 1, CAST(N'2021-06-11T22:08:48.000' AS DateTime), 50)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (26, N'7F6289F9-5A40-4', N'', N'A010002', N'', 1, CAST(N'2021-06-11T22:23:29.000' AS DateTime), 280)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (27, N'E3343DEB-E558-4', N'', N'A010002', N'', 1, CAST(N'2021-06-11T22:24:42.000' AS DateTime), 280)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (28, N'AF45F7B2-377B-4', N'', N'C010001', N'', 5, CAST(N'2021-06-11T22:34:48.000' AS DateTime), 250)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (29, N'AF45F7B2-377B-4', N'', N'A020001', N'', 5, CAST(N'2021-06-11T22:34:48.000' AS DateTime), 1500)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (30, N'542347EC-8E04-4', N'', N'C010002', N'', 3, CAST(N'2021-06-11T22:41:48.000' AS DateTime), 150)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (31, N'96F0A207-B076-4', N'', N'A010002', N'', 1, CAST(N'2021-06-11T22:50:14.000' AS DateTime), 280)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (35, N'68683E40-9C10-4', N'', N'A020002', N'', 5, CAST(N'2021-06-12T20:36:26.000' AS DateTime), 1750)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (36, N'A0497F2B-A186-4', N'', N'B010001', N'', 2, CAST(N'2021-06-12T21:56:00.000' AS DateTime), 160)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (38, N'B45E481C-A628-4', N'', N'C010001', N'冰塊 : 微冰 ', 1, CAST(N'2021-06-16T10:08:14.000' AS DateTime), 50)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (44, N'2923E815-31C8-4', N'', N'A020002', N'', 1, CAST(N'2021-06-21T14:42:03.000' AS DateTime), 350)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (45, N'A9DBCBA9-E939-4', N'', N'C010002', N'', 2, CAST(N'2021-06-21T14:48:07.000' AS DateTime), 100)
INSERT [dbo].[Carts] ([rowid], [cart_lotno], [mno], [product_no], [Property_select], [qty], [create_time], [each_item_amount]) VALUES (1064, N'CB899CC6-CE65-4', N'', N'A010001', N'辣度 : 中辣 ', 1, CAST(N'2021-07-04T17:45:42.000' AS DateTime), 250)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (3, 0, N'C', N'飲料')
INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (4, 1, N'A01', N'義大利麵')
INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (5, 1, N'A02', N'千層麵')
INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (6, 2, N'B01', N'油炸類')
INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (7, 2, N'B02', N'沙拉類')
INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (8, 3, N'C01', N'汽水類')
INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (9, 3, N'C02', N'茶類')
INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (16, 0, N'A', N'主餐')
INSERT [dbo].[Categorys] ([rowid], [parentid], [category_no], [category_name]) VALUES (2010, 0, N'B', N'附餐')
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([rowid], [brandname], [tel], [fax], [address], [opentime], [closetime], [public_holiday], [logoimage_path], [indeximage_path], [description]) VALUES (1, N'foodfun', N'033668888', N'033668889', N'桃園市楊梅區青年路1號', CAST(N'10:30:00' AS Time), CAST(N'22:00:00' AS Time), N'每週一', NULL, NULL, N'1983年初春，我們在桃園楊楊梅職訓局二樓開設桃園第一家義大利麵餐廳，提供各式義大利麵、墩飯、沙拉點心及飲品造成轟動，甚至成為年輕男女約會場所的首選。接下來的幾年內，隨著經濟發展的與顧客對我們產品的喜愛，我們朝著連鎖品牌邁進，迄今為止，我們有十五家店的規模，服務新竹以北民眾。經過多年的努力，我們從未懈怠，在技術上不斷的改進，口味上不斷的突破 ，致力追求完美的境界。本公司採用國內外精選食材、原料讓您吃的安心吃的健康以回饋愛護我們的顧客，未來希望能有更多的據點為大家服務。')
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[MealService] ON 

INSERT [dbo].[MealService] ([rowid], [mealservice_no], [mealservice_name], [remark]) VALUES (1, N'A', N'內用', NULL)
INSERT [dbo].[MealService] ([rowid], [mealservice_no], [mealservice_name], [remark]) VALUES (2, N'B', N'外帶(自取)', NULL)
INSERT [dbo].[MealService] ([rowid], [mealservice_no], [mealservice_name], [remark]) VALUES (3, N'C', N'外送', NULL)
SET IDENTITY_INSERT [dbo].[MealService] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1, N'A210713001', CAST(N'2021-07-13T17:31:01.283' AS DateTime), N'001', NULL, NULL, CAST(550.0000 AS Decimal(18, 4)), N'TBP', N'A', CAST(N'2021-07-12T17:30:54.000' AS DateTime), N'd', N'P02', N'供祚誑', N'0998546845', NULL, 0, 1, N'fce3ecb3-af42-4980-8e0c-9', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (2, N'B210713001', CAST(N'2021-07-13T17:31:29.723' AS DateTime), N'001', NULL, NULL, CAST(800.0000 AS Decimal(18, 4)), N'TBP', N'B', CAST(N'2021-07-12T17:31:23.000' AS DateTime), NULL, N'P02', N'供祚誑', N'0998546845', NULL, 0, 1, N'a19265c1-a884-4af6-9ecf-f', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1002, N'C210714001', CAST(N'2021-07-14T11:21:53.547' AS DateTime), N'001', NULL, NULL, CAST(250.0000 AS Decimal(18, 4)), N'ALD', N'C', CAST(N'2021-07-14T11:21:24.000' AS DateTime), NULL, N'P01', N'供祚誑', N'0998546845', N'300新竹市東區廣豐路42之1號', 1, 1, N'2dba9c6a-6819-4091-a450-6', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1003, N'A210714001', CAST(N'2021-07-14T11:22:41.267' AS DateTime), N'001', NULL, NULL, CAST(50.0000 AS Decimal(18, 4)), N'ALD', N'A', CAST(N'2021-07-14T11:22:33.000' AS DateTime), N'd', N'P02', N'供祚誑', N'0998546845', NULL, 1, 1, N'643b3855-7ca0-482b-b8ca-9', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1004, N'B210714001', CAST(N'2021-07-14T11:28:12.770' AS DateTime), NULL, NULL, NULL, CAST(100.0000 AS Decimal(18, 4)), N'TBP', N'B', CAST(N'2021-07-16T12:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, N'0453ed9a-a14a-4b24-bbda-a', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1005, N'A210714002', CAST(N'2021-07-14T11:29:47.090' AS DateTime), NULL, NULL, NULL, CAST(250.0000 AS Decimal(18, 4)), N'TBP', N'A', CAST(N'2021-07-14T11:29:08.000' AS DateTime), N'u', N'P01', NULL, NULL, NULL, 0, 1, N'ab8581cd-10c4-453e-bf65-6', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1006, N'A210715001', CAST(N'2021-07-15T16:37:33.620' AS DateTime), NULL, NULL, NULL, CAST(50.0000 AS Decimal(18, 4)), N'ALD', N'A', CAST(N'2021-07-15T16:37:31.443' AS DateTime), N'kk', N'P02', NULL, NULL, NULL, 1, 1, N'7ce40574-a91f-4f8d-8616-3', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1007, N'B210715001', CAST(N'2021-07-15T16:38:20.140' AS DateTime), NULL, NULL, NULL, CAST(80.0000 AS Decimal(18, 4)), N'ALD', N'B', CAST(N'2021-07-15T17:10:00.000' AS DateTime), NULL, N'P02', NULL, NULL, NULL, 1, 1, N'afdae18f-2c7a-427c-8c64-1', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1008, N'B210716001', CAST(N'2021-07-16T00:59:32.230' AS DateTime), NULL, NULL, NULL, CAST(160.0000 AS Decimal(18, 4)), N'TBP', N'B', CAST(N'2021-07-16T00:53:00.000' AS DateTime), NULL, N'P02', NULL, NULL, NULL, 0, 1, N'd822164a-a247-41ae-b832-c', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1009, N'A210716001', CAST(N'2021-07-16T00:59:55.160' AS DateTime), NULL, NULL, NULL, CAST(100.0000 AS Decimal(18, 4)), N'TBP', N'A', CAST(N'2021-07-16T00:59:54.177' AS DateTime), N'b8', NULL, NULL, NULL, NULL, 0, 0, N'97195de7-1663-4494-9357-d', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1010, N'B210716002', CAST(N'2021-07-16T01:00:37.033' AS DateTime), NULL, NULL, NULL, CAST(830.0000 AS Decimal(18, 4)), N'TBP', N'B', CAST(N'2021-07-17T16:10:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, N'40fd5def-f500-45e5-9361-7', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (1011, N'B210716003', CAST(N'2021-07-16T01:01:11.057' AS DateTime), NULL, NULL, NULL, CAST(1290.0000 AS Decimal(18, 4)), N'TBP', N'B', CAST(N'2021-07-16T01:01:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, N'd22d7606-d33c-49b5-8127-0', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (2008, N'B210716004', CAST(N'2021-07-16T14:02:05.740' AS DateTime), NULL, NULL, NULL, CAST(350.0000 AS Decimal(18, 4)), N'TBP', N'B', CAST(N'2021-07-16T14:40:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, N'4565e823-e9b0-4d3d-aaab-e', 0, N'', N'')
INSERT [dbo].[Orders] ([rowid], [order_no], [order_date], [mno], [discount_rate], [taxs], [total], [orderstatus_no], [mealservice_no], [SchedulOrderTime], [table_no], [paid_no], [receive_name], [receive_phone], [receive_address], [isclosed], [ispaided], [order_guid], [cancelorder], [cancelreason], [remark]) VALUES (2009, N'A210716002', CAST(N'2021-07-16T14:02:32.187' AS DateTime), NULL, NULL, NULL, CAST(210.0000 AS Decimal(18, 4)), N'TBP', N'A', CAST(N'2021-07-16T14:02:27.000' AS DateTime), N'u', N'P02', NULL, NULL, NULL, 0, 1, N'd2003f06-7077-49c9-b8d3-c', 0, N'', N'')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrdersDetails] ON 

INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1, N'A210713001', N'A010001', N'辣度 : 中辣 ', 250, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (2, N'A210713001', N'A01022', N'', 300, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (3, N'B210713001', N'A010001', N'', 500, 2, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (4, N'B210713001', N'A01022', N'', 300, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1002, N'C210714001', N'A010001', N'辣度 : 小辣 ', 250, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1003, N'A210714001', N'C010002', N'', 50, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1004, N'B210714001', N'C010001', N'冰塊    : 去冰 加料    : 珍珠 ', 100, 2, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1005, N'A210714002', N'A010001', N'', 250, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1006, N'A210715001', N'C010001', N'加料    : 仙草 ', 50, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1007, N'B210715001', N'B010001', N'', 80, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1008, N'B210716001', N'B010001', N'', 160, 2, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1009, N'A210716001', N'C010001', N'加料    : 仙草 ', 100, 2, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1010, N'B210716002', N'C010001', N'', 50, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1011, N'B210716002', N'A010002', N'', 280, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1012, N'B210716002', N'A010001', N'辣度    : 大辣 ', 250, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1013, N'B210716002', N'A010001', N'辣度    : 中辣 ', 250, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1014, N'B210716003', N'C010001', N'', 50, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1015, N'B210716003', N'A020002', N'', 350, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1016, N'B210716003', N'A010002', N'', 840, 3, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (1017, N'B210716003', N'C010001', N'冰塊    : 去冰 加料    : 布丁 ', 50, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (2008, N'B210716004', N'A020002', N'', 350, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (2009, N'A210716002', N'C010001', N'', 50, 1, NULL, N'')
INSERT [dbo].[OrdersDetails] ([rowid], [order_no], [product_no], [Property_select], [each_item_amount], [qty], [discount_rate], [remark]) VALUES (2010, N'A210716002', N'B010003', N'', 160, 2, NULL, N'')
SET IDENTITY_INSERT [dbo].[OrdersDetails] OFF
GO
INSERT [dbo].[OrderStatus] ([orderstatus_no], [orderstatus_name], [remark]) VALUES (N'ALC', N'備餐完成', N'//Already cooked
')
INSERT [dbo].[OrderStatus] ([orderstatus_no], [orderstatus_name], [remark]) VALUES (N'ALD', N'已出餐', N'//Already Delivered')
INSERT [dbo].[OrderStatus] ([orderstatus_no], [orderstatus_name], [remark]) VALUES (N'TBC', N'確認中', N'已下單//To be confirmed')
INSERT [dbo].[OrderStatus] ([orderstatus_no], [orderstatus_name], [remark]) VALUES (N'TBP', N'備餐中', N'//To be prepared')
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([rowid], [paid_no], [paid_name], [remark]) VALUES (1, N'P01', N'現金', NULL)
INSERT [dbo].[Payments] ([rowid], [paid_no], [paid_name], [remark]) VALUES (2, N'P02', N'信用卡', NULL)
INSERT [dbo].[Payments] ([rowid], [paid_no], [paid_name], [remark]) VALUES (3, N'P03', N'Linepay', NULL)
INSERT [dbo].[Payments] ([rowid], [paid_no], [paid_name], [remark]) VALUES (4, N'P04', N'街口支付', NULL)
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'A010001', N'蒜香培根義大利麵', N'份', N'A01', 160, 250, NULL, 10, NULL, NULL, 2, 1, 1, 1, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'A010002', N'番茄海鮮義大利麵', N'份', N'A01', 200, 280, NULL, 6, NULL, NULL, 0, NULL, 1, 1, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'A010003', N'青醬義大利麵', N'份', N'A01', 100, 300, NULL, 0, NULL, NULL, NULL, 1, 1, 1, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'A010004', N'青醬雞肉義大利麵', N'份', N'A01', 150, 250, NULL, 10, NULL, NULL, NULL, 1, 1, 0, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'A010005', N'泰式海鮮雙拼義大利麵', N'份', N'A01', 280, 360, NULL, 3, NULL, NULL, NULL, 1, 1, 1, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'A020001', N'海鮮千層麵', N'份', N'A02', 230, 300, NULL, 3, NULL, NULL, 2, 0, 1, 0, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'A020002', N'青醬雞肉千層麵', N'份', N'A02', 300, 350, NULL, 3, NULL, NULL, 0, NULL, 1, 1, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'A020003', N'洋蔥圈', N'分', N'A02', 20, 50, NULL, 3, NULL, NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'B010001', N'炸薯條', N'份', N'B01', 50, 80, NULL, 19, NULL, NULL, 0, 0, 1, 1, N'')
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'B010002', N'炸雞塊', N'份', N'B01', 50, 80, NULL, 5, NULL, NULL, 0, 0, 1, 0, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'B010003', N'炸地瓜', N'份', N'B01', 50, 80, NULL, 5, NULL, NULL, 0, 0, 1, 0, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'B020001', N'水果綜合沙拉', N'份', N'B02', 130, 180, NULL, 3, NULL, NULL, 0, 0, 1, 0, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'B020002', N'當下綜合沙拉', N'份', N'B02', 130, 180, NULL, 1, NULL, NULL, 0, 1, 1, 0, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'C010001', N'可樂', N'杯', N'C01', 30, 50, NULL, 2, NULL, NULL, 4, 0, 1, 1, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'C010002', N'雪碧', N'杯', N'C01', 25, 50, NULL, 5, NULL, NULL, 0, 1, 1, 1, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'C020001', N'紅茶', N'杯', N'C02', 10, 30, NULL, 20, NULL, NULL, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[Products] ([product_no], [product_name], [product_spec], [category_no], [price_avgcost], [price_sale], [discount_price], [stock_qty], [image_path], [description], [browse_count], [istop], [issale], [ishot], [remark]) VALUES (N'C020002', N'鮮奶茶', N'杯', N'C02', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductsProperty] ON 

INSERT [dbo].[ProductsProperty] ([rowid], [product_no], [Property_no]) VALUES (1, N'C010001', N'ice')
INSERT [dbo].[ProductsProperty] ([rowid], [product_no], [Property_no]) VALUES (2, N'C010001', N'topping')
INSERT [dbo].[ProductsProperty] ([rowid], [product_no], [Property_no]) VALUES (3, N'A010001', N'spicy')
SET IDENTITY_INSERT [dbo].[ProductsProperty] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramList] ON 

INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (1, 0, N'S', N'A', N'會員管理', N'MemberBack', N'Index')
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (2, 1, N'A', N'A01', N'權限管理', N'RoleAuthorized', N'Index')
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (3, 0, N'A', N'B', N'商品管理', N'ProductBack', N'Index')
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (4, 0, N'S', N'C', N'訂單管理', N'OrderBack', NULL)
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (6, 4, N'S', N'C02', N'歷史訂單', N'OrderBack', NULL)
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (7, 0, N'A', N'D', N'基本資料管理', N'Store', NULL)
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (9, 7, N'A', N'D01', N'公司資料', N'Company', NULL)
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (10, 7, N'A', N'D03', N'付款方式設定', N'Payments', N'Index')
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (14, 1, N'S', N'A02', N'會員資料異動', N'MemberBack', NULL)
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (15, 3, N'A', N'B01', N'商品分類', N'Categorys', N'Index')
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (16, 3, N'A', N'B02', N'商品資料', N'ProductBack', N'Index')
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (17, 3, N'A', N'B03', N'附加選項設定', N'Propertys', N'Index')
INSERT [dbo].[ProgramList] ([rowid], [parentid], [filter_role], [pro_no], [pro_name], [controller_name], [action_name]) VALUES (25, 7, N'S', N'D02', N'公司理念', N'About', NULL)
SET IDENTITY_INSERT [dbo].[ProgramList] OFF
GO
SET IDENTITY_INSERT [dbo].[Propertys] ON 

INSERT [dbo].[Propertys] ([rowid], [property_no], [property_name], [add_price], [property_value], [remark]) VALUES (1, N'ice', N'冰塊', 0, N'正常冰/微冰/少冰/去冰', NULL)
INSERT [dbo].[Propertys] ([rowid], [property_no], [property_name], [add_price], [property_value], [remark]) VALUES (2, N'hot', N'熱度', 0, N'溫/熱', NULL)
INSERT [dbo].[Propertys] ([rowid], [property_no], [property_name], [add_price], [property_value], [remark]) VALUES (3, N'spicy', N'辣度', 0, N'大辣/中辣/小辣', NULL)
INSERT [dbo].[Propertys] ([rowid], [property_no], [property_name], [add_price], [property_value], [remark]) VALUES (4, N'sweet', N'甜度', 0, N'無糖/微糖/半糖/少糖/正常糖', NULL)
INSERT [dbo].[Propertys] ([rowid], [property_no], [property_name], [add_price], [property_value], [remark]) VALUES (5, N'topping', N'加料', 20, N'珍珠/芋圓/仙草/布丁', NULL)
SET IDENTITY_INSERT [dbo].[Propertys] OFF
GO
INSERT [dbo].[Roles] ([role_no], [role_name], [remark]) VALUES (N'A', N'Admin', N'管理員')
INSERT [dbo].[Roles] ([role_no], [role_name], [remark]) VALUES (N'M', N'Member', N'會員')
INSERT [dbo].[Roles] ([role_no], [role_name], [remark]) VALUES (N'S', N'Staff', N'員工')
GO
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202105280001', N'供祚誑', N'001', N'001', N'B1200546846', CAST(N'1970-08-08T00:00:00.000' AS DateTime), N'0998546845', N'宜蘭市羅東區', N'x@gmail.com', N'M', NULL, 1, 1)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202101010001', N'郝蚌蚌', N'002', N'002', N'A123456789', CAST(N'2000-05-08T00:00:00.000' AS DateTime), N'0912846579', N'宜蘭市礁溪區', N'BOO@gmail.com', N'S', NULL, 1, 1)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202105040001', N'王曉明a', N'admin', N'admin', N'F123544455', CAST(N'1987-01-25T00:00:00.000' AS DateTime), N'0955123456', N'桃園市新屋區區', N'ming@gmail.com', N'A', NULL, 1, 1)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202106120001', N'fff', N'dddd', N'ddd', NULL, NULL, NULL, NULL, N'sdd', N'M', N'AB5064A6763A43DB8F51', 0, NULL)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202106150001', N'jjjjj', N'ddddea', N'fffa', NULL, CAST(N'2021-06-24T00:00:00.000' AS DateTime), N'0909876544', NULL, N'sdd33@hliea', N'M', N'7C30667E9FDE48189792', 0, NULL)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202106130002', N'fff', N'eeee', N'effef', NULL, NULL, NULL, NULL, N'miwa.eje@gjal.coo', N'M', N'94204EA7B6DE42BCA010', 0, NULL)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202105310002', N'LULU', N'LULU', N'LULU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202106030001', N'黃怡萱', N'mimi', N'DDD', NULL, NULL, N'+886910543522', N'廣豐路42-1號', N'miwa.huang0625@gmail.com', N'M', N'', 1, NULL)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202106130001', N'MIMIww', N'mimiss', N'dddd', NULL, CAST(N'2021-06-25T00:00:00.000' AS DateTime), N'+886910543522', N'廣豐路42-1號', N'miwa.huang062e5@gmail.com', N'M', N'C67CFD79C7DC47DAB931', 1, NULL)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202106130003', N'eeeef', N'mimisse', N'ddddd', NULL, NULL, N'0910601102', N'桃園市八點區廣豐路42-1號', N'miwa.huang06dd25@gmail.com', N'M', N'5AA674BFB8204FE0A659', 0, NULL)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202105040002', N'愛錶縣', N'shin', N'aaa', N'P110054697', CAST(N'2010-09-30T00:00:00.000' AS DateTime), N'0988546975', N'新北市瑞芳區', N'goodwork@msn.hinet.net', N'M', NULL, 1, 1)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202105050001', N'蔡陶桂', N'tsing', N'456', N'Q220005491', CAST(N'1999-05-01T00:00:00.000' AS DateTime), N'0955134877', N'桃園市龜山區', N'Wang@gmail.com', N'M', NULL, 1, 1)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202105060001', N'許清風', N'ZFF', N'5555', N'E154244452', CAST(N'1980-02-29T00:00:00.000' AS DateTime), N'0987546879', N'基隆市中正區', N'ZFF@GMAIL.COM', N'M', NULL, 1, 1)
INSERT [dbo].[Users] ([mno], [mname], [account_name], [password], [id], [birthday], [phone], [address], [email], [role_no], [varify_code], [isvarify], [isvalidate]) VALUES (N'MNO202101090001', N'和家人', N'zing1', N'999', N'G220054687', CAST(N'1965-04-08T00:00:00.000' AS DateTime), N'0980554666', N'新北市瑞芳區', N'ZING@gmail', N'A', NULL, 1, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Category_no]    Script Date: 2021/7/16 下午 02:20:51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Category_no] ON [dbo].[Categorys]
(
	[category_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_mealService_no]    Script Date: 2021/7/16 下午 02:20:51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_mealService_no] ON [dbo].[MealService]
(
	[mealservice_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Paid_no]    Script Date: 2021/7/16 下午 02:20:51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Paid_no] ON [dbo].[Payments]
(
	[paid_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Property_no]    Script Date: 2021/7/16 下午 02:20:51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Property_no] ON [dbo].[Propertys]
(
	[property_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_mno]    Script Date: 2021/7/16 下午 02:20:51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_mno] ON [dbo].[Users]
(
	[mno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_order_closed]  DEFAULT ((0)) FOR [isclosed]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_browse_count]  DEFAULT ((0)) FOR [browse_count]
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-d1039861-71ff-4c7e-9957-cfe540f203e4]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-d1039861-71ff-4c7e-9957-cfe540f203e4] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-d1039861-71ff-4c7e-9957-cfe540f203e4]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-d1039861-71ff-4c7e-9957-cfe540f203e4] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-d1039861-71ff-4c7e-9957-cfe540f203e4') > 0)   DROP SERVICE [SqlQueryNotificationService-d1039861-71ff-4c7e-9957-cfe540f203e4]; if (OBJECT_ID('SqlQueryNotificationService-d1039861-71ff-4c7e-9957-cfe540f203e4', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-d1039861-71ff-4c7e-9957-cfe540f203e4]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-d1039861-71ff-4c7e-9957-cfe540f203e4]; END COMMIT TRANSACTION; END
GO
/****** Object:  Trigger [dbo].[tr_order_mno]    Script Date: 2021/7/16 下午 02:20:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>[dbo].[tr_sal_sales]
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
 CREATE TRIGGER [dbo].[tr_order_mno] 
   ON   [dbo].[Orders]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
    
	
	DECLARE @ymd_no nvarchar(50) = 'YMD'  --會員編號設定ydm編碼
	DECLARE @sheet_len int  = 3           --會員編號設定流水號為3碼
	DECLARE @rowid nvarchar(50)
	DECLARE @order_no nvarchar(50)

	DECLARE @lead_no nvarchar(50)  
	DECLARE @command nvarchar(50)         --儲存觸發模式
	DECLARE @mno_no nvarchar(50)          --會員編號
	DECLARE @find_no nvarchar(50)         --資料庫搜尋變數
	DECLARE @mealservice_no nvarchar(50)    --用餐方式編號
	DECLARE @seq int                      --流水號編號



	
	--判斷觸發模式總類
	IF EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted) SET @command = 'INSERT'
	IF NOT EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) SET @command = 'DELETE'
	IF EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) SET @command = 'UPDATE'

	
	
	IF (@command = 'INSERT')
	BEGIN
		SET @rowid = (SELECT rowid FROM inserted)
		SET @mealservice_no = (SELECT mealservice_no FROM inserted)
		SET @mno_no = @mealservice_no 
		IF (@ymd_no = 'Y') SET @mno_no += CONVERT(varchar(4) , GETDATE() , 112)
		IF (@ymd_no = 'YM') SET @mno_no += CONVERT(varchar(6) , GETDATE() , 112)
		IF (@ymd_no = 'YMD') SET @mno_no += CONVERT(varchar(8) , GETDATE() , 12)

		SET @seq = 1             --預設流水編號為1
		SET @find_no = @mno_no + '%'   
		IF EXISTS(SELECT @mealservice_no FROM [dbo].[Orders] WHERE order_no LIKE @find_no)      
		BEGIN
			SET @find_no = (SELECT TOP 1 order_no FROM [dbo].[Orders] WHERE order_no LIKE @find_no ORDER BY order_no DESC)
			SET @seq = CAST(RIGHT(@find_no , @sheet_len) AS int) + 1
		END
		SET @mno_no += RIGHT(REPLICATE('0' , @sheet_len) +  CAST(@seq AS varchar) ,@sheet_len) 
		UPDATE [dbo].[Orders] SET order_no = @mno_no WHERE rowid = @rowid
	END







END
GO
ALTER TABLE [dbo].[Orders] ENABLE TRIGGER [tr_order_mno]
GO
/****** Object:  Trigger [dbo].[tr_paid_mno]    Script Date: 2021/7/16 下午 02:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>[dbo].[tr_sal_sales]
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[tr_paid_mno] 
   ON   [dbo].[Payments]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @lead_no nvarchar(50) = 'P'
	DECLARE @ymd_no nvarchar(50) = 'YMD'
	DECLARE @sheet_len int  = 2

    DECLARE @command nvarchar(50)
	DECLARE @sheet_no nvarchar(50)
	DECLARE @find_no nvarchar(50)
	DECLARE @sheet_date date
	DECLARE @rowid int 
	DECLARE @seq int 

	IF EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted) SET @command = 'INSERT'
	IF NOT EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) SET @command = 'DELETE'
	IF EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) SET @command = 'UPDATE'

	IF (@command = 'INSERT')
	BEGIN
		SET @rowid = (SELECT rowid FROM inserted)
		--SET @sheet_date = (SELECT mdate FROM inserted)
		SET @sheet_no = @lead_no
		--IF (@ymd_no = 'Y') SET @sheet_no += CONVERT(varchar(4) , @sheet_date , 112)
		--IF (@ymd_no = 'YM') SET @sheet_no += CONVERT(varchar(6) , @sheet_date , 112)
		--IF (@ymd_no = 'YMD') SET @sheet_no += CONVERT(varchar(8) , @sheet_date , 112)

		SET @seq = 1
		SET @find_no = @sheet_no + '%'
		IF EXISTS(SELECT rowid FROM [dbo].[Payments] WHERE paid_no LIKE @find_no)
		BEGIN
			SET @find_no = (SELECT TOP 1 paid_no FROM [dbo].[Payments] WHERE paid_no LIKE @find_no ORDER BY paid_no DESC)
			SET @seq = CAST(RIGHT(@find_no , @sheet_len) AS int) + 1
		END
		SET @sheet_no += RIGHT(REPLICATE('0' , @sheet_len) +  CAST(@seq AS varchar) ,@sheet_len) 
		UPDATE [dbo].[Payments] SET paid_no = @sheet_no WHERE rowid = @rowid
	END

END
GO
ALTER TABLE [dbo].[Payments] ENABLE TRIGGER [tr_paid_mno]
GO
/****** Object:  Trigger [dbo].[tr_user_no]    Script Date: 2021/7/16 下午 02:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Johnson
-- Create date: 2021/02/22
-- Description:	sal_sales Trigger
-- =============================================
CREATE TRIGGER [dbo].[tr_user_no]
   ON  [dbo].[Users]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	DECLARE @lead_no nvarchar(50) = 'MNO'
	DECLARE @ymd_no nvarchar(50) = 'YMD'
	DECLARE @sheet_len int  = 4
	DECLARE @account_name nvarchar(50)
    DECLARE @command nvarchar(50)
	DECLARE @sheet_no nvarchar(50)
	DECLARE @find_no nvarchar(50)
	DECLARE @sheet_date date
	
	DECLARE @seq int 

	IF EXISTS(SELECT * FROM inserted) AND NOT EXISTS(SELECT * FROM deleted) SET @command = 'INSERT'
	IF NOT EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) SET @command = 'DELETE'
	IF EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) SET @command = 'UPDATE'

	IF (@command = 'INSERT')
	BEGIN
		SET @account_name = (SELECT account_name FROM inserted)
		--SET @sheet_date = (SELECT createdate FROM inserted)
		SET @sheet_no = @lead_no
		IF (@ymd_no = 'Y') SET @sheet_no += CONVERT(varchar(4) , GETDATE() , 112)    --改放getdate()
		IF (@ymd_no = 'YM') SET @sheet_no += CONVERT(varchar(6) , GETDATE() , 112)
		IF (@ymd_no = 'YMD') SET @sheet_no += CONVERT(varchar(8) , GETDATE() , 112)

		SET @seq = 1
		SET @find_no = @sheet_no + '%'
		IF EXISTS(SELECT account_name FROM  [dbo].[Users] WHERE mno LIKE @find_no)
		BEGIN
			SET @find_no = (SELECT TOP 1 mno FROM  [dbo].[Users] WHERE mno LIKE @find_no ORDER BY mno DESC)
			SET @seq = CAST(RIGHT(@find_no , @sheet_len) AS int) + 1
		END
		SET @sheet_no += RIGHT(REPLICATE('0' , @sheet_len) +  CAST(@seq AS varchar) ,@sheet_len) 
		UPDATE [dbo].[Users] SET mno = @sheet_no WHERE account_name = @account_name
	END

END
GO
ALTER TABLE [dbo].[Users] ENABLE TRIGGER [tr_user_no]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carts', @level2type=N'COLUMN',@level2name=N'rowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'購物車批次碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carts', @level2type=N'COLUMN',@level2name=N'cart_lotno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carts', @level2type=N'COLUMN',@level2name=N'mno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carts', @level2type=N'COLUMN',@level2name=N'product_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'購買產品屬性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carts', @level2type=N'COLUMN',@level2name=N'Property_select'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carts', @level2type=N'COLUMN',@level2name=N'qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'購物車產生時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carts', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categorys', @level2type=N'COLUMN',@level2name=N'rowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父類別編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categorys', @level2type=N'COLUMN',@level2name=N'parentid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子類別編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categorys', @level2type=N'COLUMN',@level2name=N'category_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'類別名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categorys', @level2type=N'COLUMN',@level2name=N'category_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MealService', @level2type=N'COLUMN',@level2name=N'rowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用餐方式編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MealService', @level2type=N'COLUMN',@level2name=N'mealservice_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用餐方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MealService', @level2type=N'COLUMN',@level2name=N'mealservice_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MealService', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'rowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'order_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會員編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'mno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折扣 (整筆訂單)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'discount_rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'稅額' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'taxs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'總計(已折扣含稅)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單狀態' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'orderstatus_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用餐方式編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'mealservice_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'預約取餐時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'SchedulOrderTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'table_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款方式編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'paid_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'receive_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人電話' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'receive_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'receive_address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單結案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'isclosed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否結帳' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ispaided'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取消訂單' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'cancelorder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取消訂單原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'cancelreason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersDetails', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersDetails', @level2type=N'COLUMN',@level2name=N'product_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'購買產品屬性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersDetails', @level2type=N'COLUMN',@level2name=N'Property_select'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品項小計' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersDetails', @level2type=N'COLUMN',@level2name=N'each_item_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersDetails', @level2type=N'COLUMN',@level2name=N'qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折扣 (商品)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersDetails', @level2type=N'COLUMN',@level2name=N'discount_rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersDetails', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單狀態編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderStatus', @level2type=N'COLUMN',@level2name=N'orderstatus_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單狀態' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderStatus', @level2type=N'COLUMN',@level2name=N'orderstatus_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderStatus', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payments', @level2type=N'COLUMN',@level2name=N'rowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款方式編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payments', @level2type=N'COLUMN',@level2name=N'paid_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payments', @level2type=N'COLUMN',@level2name=N'paid_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Payments', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'product_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'product_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品規格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'product_spec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子類別編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'category_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平均成本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'price_avgcost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'售價' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'price_sale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'各商品折扣後價格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'discount_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'庫存數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'stock_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品圖片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'image_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'瀏覽次數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'browse_count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否銷售排行前面10名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'istop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否上架' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'issale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否熱銷' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ishot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsProperty', @level2type=N'COLUMN',@level2name=N'rowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsProperty', @level2type=N'COLUMN',@level2name=N'product_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品屬性編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsProperty', @level2type=N'COLUMN',@level2name=N'Property_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Propertys', @level2type=N'COLUMN',@level2name=N'rowid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產品屬性碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Propertys', @level2type=N'COLUMN',@level2name=N'property_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Propertys', @level2type=N'COLUMN',@level2name=N'property_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加價' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Propertys', @level2type=N'COLUMN',@level2name=N'add_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Propertys', @level2type=N'COLUMN',@level2name=N'property_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Propertys', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'role_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會員編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'mno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'mname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'account_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身分證字號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手機號碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'role_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'認證編碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'varify_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否認證' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'isvarify'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'isvalidate'
GO
USE [master]
GO
ALTER DATABASE [GoPASTA] SET  READ_WRITE 
GO
