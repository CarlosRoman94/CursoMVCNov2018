
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/01/2018 17:08:12
-- Generated from EDMX file: C:\Users\CETI\Documents\CursoMVCNov2018\SlnInventario\Inventario\Models\ModeloInventario.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dbInventarios];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Producto_Categorias]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Categorias];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categorias];
GO
IF OBJECT_ID(N'[dbo].[Producto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Producto];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categorias'
CREATE TABLE [dbo].[Categorias] (
    [id_Categoria] int  NOT NULL,
    [Nombre] nvarchar(50)  NULL,
    [descripcion] nvarchar(50)  NULL,
    [esActivo] bit  NULL
);
GO

-- Creating table 'Producto'
CREATE TABLE [dbo].[Producto] (
    [id_producto] int  NOT NULL,
    [nombre] nvarchar(50)  NOT NULL,
    [descripcion] nchar(10)  NOT NULL,
    [cantidad] varchar(max)  NOT NULL,
    [marca] nvarchar(50)  NOT NULL,
    [fechaCreacion] datetime  NOT NULL,
    [idCategoria] int  NOT NULL,
    [esActivo] nchar(10)  NOT NULL,
    [UnidadMedidad] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_Categoria] in table 'Categorias'
ALTER TABLE [dbo].[Categorias]
ADD CONSTRAINT [PK_Categorias]
    PRIMARY KEY CLUSTERED ([id_Categoria] ASC);
GO

-- Creating primary key on [id_producto] in table 'Producto'
ALTER TABLE [dbo].[Producto]
ADD CONSTRAINT [PK_Producto]
    PRIMARY KEY CLUSTERED ([id_producto] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [idCategoria] in table 'Producto'
ALTER TABLE [dbo].[Producto]
ADD CONSTRAINT [FK_Producto_Categorias]
    FOREIGN KEY ([idCategoria])
    REFERENCES [dbo].[Categorias]
        ([id_Categoria])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Producto_Categorias'
CREATE INDEX [IX_FK_Producto_Categorias]
ON [dbo].[Producto]
    ([idCategoria]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------