create database UCondo;

USE [UCondo]
GO
/****** Object:  Table [dbo].[Treeviewtbl]    Script Date: 16-06-2018 21:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TblConta2](
	[ID] [int] NOT NULL,
	[FileName] [varchar](50) NOT NULL,
	[CodConta] [varchar](50) NOT NULL,
	[TipoConta] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
	[AceitaLancamentos] [int] default (1),
 CONSTRAINT [PK_TblConta2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (1, N'Receitas', 0, 1, 0) ;
INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (2, N'Despesas', 0, 1, 0) ;
INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (11, N'Receitas diversas', 1, 1, 0) ;
INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (12, N'Receitas de Contrato', 1, 1, 0) ;
INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (13, N'Multas', 1, 1, 0) ;

INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (21, N'Despesas diversas', 2, 1, 0) ;
INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (22, N'Despesas materiais de limpeza', 2, 1, 0) ;
INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (23, N'Despesas manutencao', 2, 1, 0) ;
INSERT [dbo].[TblConta2] ([ID], [FileName], [ParentID],[CodConta],[TipoConta] ) VALUES (231, N'Despesas piscina', 23, 1, 0) ;
