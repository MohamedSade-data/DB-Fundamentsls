USE [master]
GO

/****** Object:  Database [REAL_ESTATE_COMPANY]    Script Date: 5/25/2024 3:08:10 PM ******/
CREATE DATABASE [REAL_ESTATE_COMPANY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'REAL_ESTATE_COMPANY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\REAL_ESTATE_COMPANY.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'REAL_ESTATE_COMPANY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\REAL_ESTATE_COMPANY_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [REAL_ESTATE_COMPANY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET ARITHABORT OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET  DISABLE_BROKER 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET RECOVERY FULL 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET  MULTI_USER 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET DB_CHAINING OFF 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET QUERY_STORE = OFF
GO

ALTER DATABASE [REAL_ESTATE_COMPANY] SET  READ_WRITE 
GO

