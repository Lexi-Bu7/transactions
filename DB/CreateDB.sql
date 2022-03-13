USE master;
GO

CREATE DATABASE Transactions;
GO

USE Transactions;
GO

CREATE TABLE dbo.Account(
      AccountID int IDENTITY (1,1) NOT NULL
	  ,CreatedOn datetimeoffset NOT NULL
	  ,Name nvarchar(64) NULL
      , CONSTRAINT PK_Account_AccountID PRIMARY KEY CLUSTERED (AccountID)
);
GO

CREATE TABLE [dbo].[Transaction](
      TransactionID int IDENTITY (1,1) NOT NULL
	  ,AccountID int NOT NULL
	  ,Amount decimal(16,2) NOT NULL
	  ,CreatedOn datetimeoffset NOT NULL
	  ,Description nvarchar(128) NULL
      , CONSTRAINT PK_Transaction_TransactionID PRIMARY KEY CLUSTERED (TransactionID)
	  , CONSTRAINT FK_Transaction_AccountID FOREIGN KEY (AccountID)
        REFERENCES dbo.Account (AccountID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);