CREATE TABLE [dbo].[TblConta] (
    [ID]       INT          NOT NULL,
    [FileName] VARCHAR (50) NOT NULL,
    [ParentID] INT          NOT NULL,
    [CodConta] VARCHAR (50) NULL,
	[TipoConta] int null
);



INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1, N'Receitas', 0, 1, 0)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (3, N'opt1', 1, 0, 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (6, N'opt2', 1, 0, 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (7, N'College Master', 1, 0, 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (8, N'Academic Year', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1002, N'Course Management', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1003, N'Designation Master', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1004, N'Forgot Password', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1005, N'Fee Group Seat', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1006, N'Caste Master', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1007, N'Faculty Evaluation Master', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1008, N'Feedback Type', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID], codConta, TipoConta) VALUES (1009, N'Feedback Description', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID]) VALUES (1010, N'Feedback Evaluation Master', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID]) VALUES (2003, N'Menu', 1)
GO
INSERT [dbo].[TblConta] ([ID], [FileName], [ParentID]) VALUES (2004, N'Semester Master', 1)
GO

