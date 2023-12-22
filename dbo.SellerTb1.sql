CREATE TABLE [dbo].[SellerTb1] (
    [SelId]      INT           IDENTITY (1, 1) NOT NULL,
    [SelName]    VARCHAR (50)  NOT NULL,
    [SelEmail]   VARCHAR (150) NOT NULL,
    [SelPhone]   VARCHAR (50)  NOT NULL,
    [SelAddress] VARCHAR (150) NOT NULL,
    PRIMARY KEY CLUSTERED ([SelId] ASC)
);

