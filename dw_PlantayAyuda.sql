USE [master]
GO
/****** Object:  Database [dw_PlantayAyuda]    Script Date: 19/10/2023 3:08:44 PM ******/
CREATE DATABASE [dw_PlantayAyuda]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dw_PlantayAyuda', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\dw_PlantayAyuda.mdf' , SIZE = 65536KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dw_PlantayAyuda_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\dw_PlantayAyuda_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [dw_PlantayAyuda] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dw_PlantayAyuda].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dw_PlantayAyuda] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET ARITHABORT OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dw_PlantayAyuda] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dw_PlantayAyuda] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dw_PlantayAyuda] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dw_PlantayAyuda] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dw_PlantayAyuda] SET  MULTI_USER 
GO
ALTER DATABASE [dw_PlantayAyuda] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dw_PlantayAyuda] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dw_PlantayAyuda] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dw_PlantayAyuda] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dw_PlantayAyuda] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dw_PlantayAyuda] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dw_PlantayAyuda] SET QUERY_STORE = ON
GO
ALTER DATABASE [dw_PlantayAyuda] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [dw_PlantayAyuda]
GO
/****** Object:  Table [dbo].[D_Cliente]    Script Date: 19/10/2023 3:08:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Cliente](
	[idcliente] [nvarchar](50) NOT NULL,
	[nombrecliente] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[estadoCivil] [nvarchar](50) NULL,
 CONSTRAINT [PK_D_Cliente] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Producto]    Script Date: 19/10/2023 3:08:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Producto](
	[idproducto] [nvarchar](50) NOT NULL,
	[nomproducto] [nvarchar](50) NULL,
	[familiaproducto] [nvarchar](50) NULL,
 CONSTRAINT [PK_D_Producto] PRIMARY KEY CLUSTERED 
(
	[idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Sucursal]    Script Date: 19/10/2023 3:08:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Sucursal](
	[idsucursal] [int] NOT NULL,
	[nombresucursal] [nvarchar](50) NULL,
	[nombreregion] [nvarchar](50) NULL,
	[nombrecomuna] [nvarchar](50) NULL,
	[nombreciudad] [nvarchar](50) NULL,
 CONSTRAINT [PK_D_Sucursal] PRIMARY KEY CLUSTERED 
(
	[idsucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Tiempo]    Script Date: 19/10/2023 3:08:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Tiempo](
	[idtiempo] [nvarchar](50) NOT NULL,
	[mes] [int] NULL,
	[anio] [int] NULL,
 CONSTRAINT [PK_D_Tiempo] PRIMARY KEY CLUSTERED 
(
	[idtiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Vendedor]    Script Date: 19/10/2023 3:08:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Vendedor](
	[idvendedor] [int] NOT NULL,
	[nombrevendedor] [nvarchar](50) NULL,
	[tipocapacitacion] [nvarchar](50) NULL,
	[horacapacitacion] [int] NULL,
 CONSTRAINT [PK_D_Vendedor] PRIMARY KEY CLUSTERED 
(
	[idvendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[H_Venta]    Script Date: 19/10/2023 3:08:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[H_Venta](
	[idventa] [int] IDENTITY(1,1) NOT NULL,
	[idproducto] [nvarchar](50) NULL,
	[idsucursal] [int] NULL,
	[idcliente] [nvarchar](50) NULL,
	[idvendedor] [int] NULL,
	[idtiempo] [nvarchar](50) NULL,
	[cantidad_venta] [int] NULL,
	[monto_venta] [int] NULL,
 CONSTRAINT [PK_H_Venta] PRIMARY KEY CLUSTERED 
(
	[idventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD  CONSTRAINT [FK_H_Venta_D_Cliente] FOREIGN KEY([idcliente])
REFERENCES [dbo].[D_Cliente] ([idcliente])
GO
ALTER TABLE [dbo].[H_Venta] CHECK CONSTRAINT [FK_H_Venta_D_Cliente]
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD  CONSTRAINT [FK_H_Venta_D_Producto] FOREIGN KEY([idproducto])
REFERENCES [dbo].[D_Producto] ([idproducto])
GO
ALTER TABLE [dbo].[H_Venta] CHECK CONSTRAINT [FK_H_Venta_D_Producto]
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD  CONSTRAINT [FK_H_Venta_D_Sucursal] FOREIGN KEY([idsucursal])
REFERENCES [dbo].[D_Sucursal] ([idsucursal])
GO
ALTER TABLE [dbo].[H_Venta] CHECK CONSTRAINT [FK_H_Venta_D_Sucursal]
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD  CONSTRAINT [FK_H_Venta_D_Tiempo] FOREIGN KEY([idtiempo])
REFERENCES [dbo].[D_Tiempo] ([idtiempo])
GO
ALTER TABLE [dbo].[H_Venta] CHECK CONSTRAINT [FK_H_Venta_D_Tiempo]
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD  CONSTRAINT [FK_H_Venta_D_Vendedor] FOREIGN KEY([idvendedor])
REFERENCES [dbo].[D_Vendedor] ([idvendedor])
GO
ALTER TABLE [dbo].[H_Venta] CHECK CONSTRAINT [FK_H_Venta_D_Vendedor]
GO
USE [master]
GO
ALTER DATABASE [dw_PlantayAyuda] SET  READ_WRITE 
GO
