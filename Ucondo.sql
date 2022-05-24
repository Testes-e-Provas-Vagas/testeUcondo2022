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
	[Tipo] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
	[AceitaLancamentos] [int] default (1),
 CONSTRAINT [PK_TblConta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1, N'Receitas', 0, 1, 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3, N'Change Password', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (6, N'Branch Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (7, N'College Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (8, N'Academic Year', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1002, N'Course Management', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1003, N'Designation Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1004, N'Forgot Password', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1005, N'Fee Group Seat', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1006, N'Caste Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1007, N'Faculty Evaluation Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1008, N'Feedback Type', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1009, N'Feedback Description', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (1010, N'Feedback Evaluation Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (2003, N'Menu', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (2004, N'Semester Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (2005, N'Holiday Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (2006, N'News and Events', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (2007, N'Qualification Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (2008, N'Role Master', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (2009, N'Role Access', 1)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3003, N'Exam', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3004, N'Exam Mark Setting', 3003)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3005, N'Exam Result', 3003)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3006, N'Exam Subject Master', 3003)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3007, N'Exam Time Table', 3003)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3008, N'Exam Hall Ticket Generation', 3003)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3009, N'Academic', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3010, N'Academic Section Master', 3009)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3011, N'Class Room Master', 3009)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3012, N'Subject Category Master', 3009)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3013, N'Subject Master', 3009)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3014, N'Subject Master Details', 3009)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3015, N'Syllabus Master', 3009)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3016, N'Alumini Management', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3017, N'Alumini Master', 3016)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3018, N'Alumini Email and Sms', 3016)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3019, N'Alumini Email and Sms Log Track', 3016)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3020, N'Attendance Management', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3021, N'Shift Time Master', 3020)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3022, N'Faculty Attendance', 3020)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3023, N'Faculty Attendance New', 3020)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3024, N'Leave Approval', 3020)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3025, N'Leave Request', 3020)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3026, N'Student Attendance', 3020)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3027, N'Common', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3028, N'Appointment', 3027)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3029, N'Bind User Photo', 3027)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3030, N'Configuration Master', 3027)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3031, N'Feedback', 3027)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3032, N'Group Email And Sms', 3027)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3033, N'Hierarchy Setting', 3027)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3034, N'Larger Photo Hierarchy Setting', 3027)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3035, N'Home', 3027)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3036, N'Mails', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3037, N'Group Emails and Sms', 3036)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3038, N'Menu', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3039, N'Show Menu', 3038)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3040, N'Photo Gallery', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3041, N'Photo Gallery Upload', 3040)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3042, N'Full Image', 3040)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3043, N'Images', 3040)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3044, N'Photo Gallery Show', 3040)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3045, N'PreAdmission', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3046, N'New Admission Students', 3045)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3047, N'Pre Admission Students', 3045)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3048, N'Pre Admission Student Master', 3045)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3049, N'Pre Admission Summary', 3045)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3050, N'Shortlisted Students List', 3045)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3051, N'Profile', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3052, N'College Management', 3051)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3053, N'Document Download', 3051)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3054, N'Document Upload', 3051)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3055, N'Certificate Download', 3051)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3056, N'University Management', 3051)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3057, N'Reports', 0)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3058, N'Holiday List Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3059, N'Fee Receipt Details Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3060, N'Alumini Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3061, N'Attendance Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3062, N'Exam Result Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3063, N'Exam Schedule Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3064, N'Faculty Attendance Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3066, N'Faculty Attendance Report New', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3067, N'Faculty Leave Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3068, N'Feedback Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3069, N'Fee Structure Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3070, N'Hostel Wise Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3071, N'Id Card Generation', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3072, N'Logged User Details', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3073, N'Mess Fee Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3074, N'Overall Attendance Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3075, N'Staff Class Allocation Details', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3076, N'Staff Information Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3077, N'Student Categorywise Report', 3057)
GO
INSERT [dbo].[Treeviewtbl] ([ID], [FileName], [ParentID]) VALUES (3078, N'Student Certificate', 3057)
GO
