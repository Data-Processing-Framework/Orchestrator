IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'logs')
    BEGIN
    CREATE DATABASE [logs]


    END
    GO
        USE [logs]
    GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='TableName' and xtype='U')
BEGIN
    CREATE TABLE TableName (
        Id INT PRIMARY KEY IDENTITY (1, 1),
        Name VARCHAR(100)
    )
    CREATE TABLE [Worker](
        [id] [bigint] IDENTITY(1,1) NOT NULL,
        [log_level] [int] NULL,
        [log_levelname] [char](32) NULL,
        [log] [char](2048) NOT NULL,
        [created_at] [datetime2](7) NOT NULL,
        [created_by] [char](32) NOT NULL,
    )
END