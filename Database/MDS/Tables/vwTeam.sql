﻿CREATE TABLE [MDS].[vwTeam] (
    [ProcessExecutionID]   INT              NULL,
    [LoadDateTime]         DATETIME2 (7)    NULL,
    [ID]                   INT              NULL,
    [MUID]                 UNIQUEIDENTIFIER NULL,
    [VersionName]          NVARCHAR (50)    NULL,
    [VersionNumber]        INT              NULL,
    [Version_ID]           INT              NULL,
    [VersionFlag]          NVARCHAR (50)    NULL,
    [Name]                 NVARCHAR (250)   NULL,
    [Code]                 NVARCHAR (250)   NULL,
    [ChangeTrackingMask]   INT              NULL,
    [League_Code]          NVARCHAR (250)   NULL,
    [League_Name]          NVARCHAR (250)   NULL,
    [League_ID]            INT              NULL,
    [Division_Code]        NVARCHAR (250)   NULL,
    [Division_Name]        NVARCHAR (250)   NULL,
    [Division_ID]          INT              NULL,
    [EnterDateTime]        DATETIME2 (7)    NULL,
    [EnterUserName]        NVARCHAR (100)   NULL,
    [EnterVersionNumber]   INT              NULL,
    [LastChgDateTime]      DATETIME2 (7)    NULL,
    [LastChgUserName]      NVARCHAR (100)   NULL,
    [LastChgVersionNumber] INT              NULL,
    [ValidationStatus]     NVARCHAR (250)   NULL
);
