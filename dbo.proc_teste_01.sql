SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_teste_01] (
    @Id INT
)
AS
BEGIN
    DECLARE @Nome varchar(50)
           ,@Endereco varchar(200)
           ,@UF char(2)

    IF EXISTS(
        SELECT Id FROM dbo.Sincronizacao WHERE Id = @Id
    )
    BEGIN
        SELECT Nome FROM [dbo].[Sincronizacao]
    END
    ELSE
    BEGIN
        SELECT TOP 10 Id, Nome FROM [dbo].[Sincronizacao] wher
    END
END
GO
