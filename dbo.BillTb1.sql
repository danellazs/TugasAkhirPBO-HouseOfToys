CREATE TABLE [dbo].[BillTb1] (
    [BillId] INT  IDENTITY (1, 1) NOT NULL,
    [Bdate]  DATE NOT NULL,
    [Seller] INT  NOT NULL,
    [Amount] INT  NOT NULL,
    PRIMARY KEY CLUSTERED ([BillId] ASC),
    CONSTRAINT [FK1] FOREIGN KEY ([Seller]) REFERENCES [dbo].[SellerTb1] ([SelId])
);

