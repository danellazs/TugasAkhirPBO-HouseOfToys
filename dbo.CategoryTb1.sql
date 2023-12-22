CREATE TABLE [dbo].[CategoryTb1] (
    [CatId]   INT           IDENTITY (1, 1) NOT NULL,
    [CatName] VARCHAR (50)  NOT NULL,
    [CatDesc] VARCHAR (200) NOT NULL,
    PRIMARY KEY CLUSTERED ([CatId] ASC)
);

