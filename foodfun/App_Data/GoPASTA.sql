USE [GoPASTA]
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-d51321c3-40fa-48e7-8d51-1ef271d882a6]    Script Date: 2021/7/16 下午 12:35:39 ******/
DROP PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-d51321c3-40fa-48e7-8d51-1ef271d882a6]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Propertys]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Propertys]') AND type in (N'U'))
DROP TABLE [dbo].[Propertys]
GO
/****** Object:  Table [dbo].[ProgramList]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProgramList]') AND type in (N'U'))
DROP TABLE [dbo].[ProgramList]
GO
/****** Object:  Table [dbo].[ProductsProperty]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductsProperty]') AND type in (N'U'))
DROP TABLE [dbo].[ProductsProperty]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type in (N'U'))
DROP TABLE [dbo].[Payments]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderStatus]') AND type in (N'U'))
DROP TABLE [dbo].[OrderStatus]
GO
/****** Object:  Table [dbo].[OrdersDetails]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdersDetails]') AND type in (N'U'))
DROP TABLE [dbo].[OrdersDetails]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[MealService]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MealService]') AND type in (N'U'))
DROP TABLE [dbo].[MealService]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
DROP TABLE [dbo].[Company]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorys]') AND type in (N'U'))
DROP TABLE [dbo].[Categorys]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carts]') AND type in (N'U'))
DROP TABLE [dbo].[Carts]
GO
/****** Object:  Table [dbo].[About]    Script Date: 2021/7/16 下午 12:35:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[About]') AND type in (N'U'))
DROP TABLE [dbo].[About]
GO
USE [master]
GO
/****** Object:  Database [GoPASTA]    Script Date: 2021/7/16 下午 12:35:40 ******/
DROP DATABASE [GoPASTA]
GO
