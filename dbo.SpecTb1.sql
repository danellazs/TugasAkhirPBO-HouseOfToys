CREATE TABLE [dbo].[SpecTb1] (
    [SpecId]    INT          IDENTITY (1, 1) NOT NULL,
    [SpecAge]   INT          NOT NULL,
    [SpecBrand] VARCHAR (50) NOT NULL,
    [SpecSize]  VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([SpecId] ASC)
);

