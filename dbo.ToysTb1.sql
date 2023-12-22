CREATE TABLE [dbo].[ToysTb1] (
    [TId]       INT           IDENTITY (1, 1) NOT NULL,
    [TName]     VARCHAR (150) NOT NULL,
    [TSpec]     INT           NOT NULL,
    [TCategory] INT           NOT NULL,
    [TQty]      INT           NOT NULL,
    [TPrice]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([TId] ASC),
    CONSTRAINT [FK2] FOREIGN KEY ([TCategory]) REFERENCES [dbo].[CategoryTb1] ([CatId]),
    CONSTRAINT [FK3] FOREIGN KEY ([TSpec]) REFERENCES [dbo].[SpecTb1] ([SpecId])
);

