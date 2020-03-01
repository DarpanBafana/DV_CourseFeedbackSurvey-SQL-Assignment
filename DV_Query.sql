USE [master]
GO
CREATE DATABASE [DV]
USE [DV]
GO
CREATE SCHEMA [dv]
GO
CREATE SCHEMA [survey]
GO
CREATE TABLE [dv].[Course](
	[CId] [int] NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL
)
CREATE TABLE [dv].[SemesterOffering](
	[SoId] [int] NULL,
	[CId] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL
) 
CREATE TABLE [dv].[Student](
	[SId] [int] NOT NULL,
	[StudentName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](250) NULL,
) 
CREATE TABLE [dv].[StudentCourseORSemesterRegistration](
	[SId] [int] NULL,
	[SoId] [int] NULL
)
CREATE TABLE [survey].[Question](
	[QId] [int] NOT NULL,
	[QuestionText] [nvarchar](300) NULL,
	[QuestionResponseType] [varchar](10) NULL,
	[SurvId] [int] NULL
)
CREATE TABLE [survey].[Response](
	[SId] [int] NULL,
	[CId] [int] NULL,
	[QId] [int] NULL,
	[Answer] [nvarchar](500) NULL
) 
CREATE TABLE [survey].[SurveyCourseMapping](
	[SurvId] [int] NULL,
	[CId] [int] NULL
)
CREATE TABLE [survey].[SurveyDetail](
	[SurvId] [int] NOT NULL,
	[SurvName] [nvarchar](300) NULL
) 

INSERT [dv].[Course] ([CId], [CourseName]) VALUES (1, N'Operating System')
GO
INSERT [dv].[Course] ([CId], [CourseName]) VALUES (2, N'Programming')
GO
INSERT [dv].[Course] ([CId], [CourseName]) VALUES (3, N'Data Science')
GO
INSERT [dv].[Course] ([CId], [CourseName]) VALUES (4, N'Machine Learning')
GO
INSERT [dv].[Course] ([CId], [CourseName]) VALUES (5, N'Artificial Intelligence')
GO
INSERT [dv].[Course] ([CId], [CourseName]) VALUES (6, N'Computer Network')
GO
INSERT [dv].[Course] ([CId], [CourseName]) VALUES (7, N'Mathematics')
GO
INSERT [dv].[Course] ([CId], [CourseName]) VALUES (8, N'Statistics')
GO
INSERT [dv].[Course] ([CId], [CourseName]) VALUES (9, N'Gamification')
GO
INSERT [dv].[SemesterOffering] ([SoId], [CId], [StartDate], [EndDate]) VALUES (1, 4, CAST(N'2015-06-15' AS Date), CAST(N'2015-12-20' AS Date))
GO
INSERT [dv].[SemesterOffering] ([SoId], [CId], [StartDate], [EndDate]) VALUES (1, 5, CAST(N'2015-06-15' AS Date), CAST(N'2015-12-20' AS Date))
GO
INSERT [dv].[SemesterOffering] ([SoId], [CId], [StartDate], [EndDate]) VALUES (1, 3, CAST(N'2015-06-15' AS Date), CAST(N'2015-12-20' AS Date))
GO
INSERT [dv].[SemesterOffering] ([SoId], [CId], [StartDate], [EndDate]) VALUES (2, 7, CAST(N'2016-06-15' AS Date), CAST(N'2016-12-20' AS Date))
GO
INSERT [dv].[SemesterOffering] ([SoId], [CId], [StartDate], [EndDate]) VALUES (2, 8, CAST(N'2016-06-15' AS Date), CAST(N'2016-12-20' AS Date))
GO
INSERT [dv].[SemesterOffering] ([SoId], [CId], [StartDate], [EndDate]) VALUES (3, 1, CAST(N'2017-06-15' AS Date), CAST(N'2017-12-20' AS Date))
GO
INSERT [dv].[SemesterOffering] ([SoId], [CId], [StartDate], [EndDate]) VALUES (3, 2, CAST(N'2017-06-15' AS Date), CAST(N'2017-12-20' AS Date))
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (1, N'John', N'john@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (2, N'Steve', N'steve@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (3, N'Ben', N'ben@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (4, N'Alex', N'alex@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (5, N'Harry', N'harry@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (6, N'David', N'david@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (7, N'Nathan', N'nathan@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (8, N'Kevin', N'kevin@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (9, N'Peter', N'peter@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (10, N'Mark', N'mark@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (11, N'Adam', N'adam@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (12, N'Will', N'will@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (13, N'Jack', N'jack@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (14, N'Nick', N'nick@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (15, N'Matt', N'matt@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (16, N'Max', N'max@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (17, N'Tom', N'tom@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (18, N'Ross', N'ross@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (19, N'Roger', N'roger@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (20, N'Stephen', N'stephen@dv.com')
GO
INSERT [dv].[Student] ([SId], [StudentName], [Email]) VALUES (21, N'Mathew', N'mathew@dv.com')
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (1, 3)
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (2, 3)
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (3, 3)
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (4, 2)
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (5, 2)
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (6, 2)
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (7, 1)
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (8, 1)
GO
INSERT [dv].[StudentCourseORSemesterRegistration] ([SId], [SoId]) VALUES (9, 1)
GO
INSERT [survey].[Question] ([QId], [QuestionText], [QuestionResponseType], [SurvId]) VALUES (1, N'Did you like the course? (Rank 1 – 5)', N'int', 1)
GO
INSERT [survey].[Question] ([QId], [QuestionText], [QuestionResponseType], [SurvId]) VALUES (2, N'How many classes you missed in the semester (out of 20) ?', N'text', 1)
GO
INSERT [survey].[Question] ([QId], [QuestionText], [QuestionResponseType], [SurvId]) VALUES (3, N'What topics you expected to learn about in the course?', N'text', NULL)
GO
INSERT [survey].[Question] ([QId], [QuestionText], [QuestionResponseType], [SurvId]) VALUES (4, N'Did the class start and end of time? Yes/No?', N'bool', NULL)
GO
INSERT [survey].[Question] ([QId], [QuestionText], [QuestionResponseType], [SurvId]) VALUES (5, N'Did you like the course? (Rank 1 – 5)', N'int', NULL)
GO
INSERT [survey].[Response] ([SId], [CId], [QId], [Answer]) VALUES (1, 1, 1, N'3')
GO
INSERT [survey].[Response] ([SId], [CId], [QId], [Answer]) VALUES (1, 1, 2, N'7')
GO
INSERT [survey].[Response] ([SId], [CId], [QId], [Answer]) VALUES (2, 1, 1, N'5')
GO
INSERT [survey].[Response] ([SId], [CId], [QId], [Answer]) VALUES (3, 1, 1, N'4')
GO
INSERT [survey].[Response] ([SId], [CId], [QId], [Answer]) VALUES (1, 2, 1, N'4')
GO
INSERT [survey].[Response] ([SId], [CId], [QId], [Answer]) VALUES (2, 2, 1, N'4')
GO
INSERT [survey].[Response] ([SId], [CId], [QId], [Answer]) VALUES (3, 2, 1, N'2')
GO
INSERT [survey].[Response] ([SId], [CId], [QId], [Answer]) VALUES (8, 3, 5, N'')
GO
INSERT [survey].[SurveyCourseMapping] ([SurvId], [CId]) VALUES (1, 1)
GO
INSERT [survey].[SurveyCourseMapping] ([SurvId], [CId]) VALUES (1, 2)
GO
INSERT [survey].[SurveyCourseMapping] ([SurvId], [CId]) VALUES (2, 3)
GO
INSERT [survey].[SurveyDetail] ([SurvId], [SurvName]) VALUES (1, N'Survey A')
GO
INSERT [survey].[SurveyDetail] ([SurvId], [SurvName]) VALUES (2, N'Survey B')
GO

---A)
SELECT CId, Count(Answer) FROM [survey].[Response] WHERE (Answer BETWEEN 3 AND 5) AND QId IN
(SELECT QId FROM [survey].[Question] a WHERE SurvId IN
(SELECT SurvId FROM [survey].[SurveyCourseMapping] WHERE CId IN 
(SELECT CId FROM [dv].[SemesterOffering] WHERE SoId = 
(SELECT TOP(1) SoId FROM [dv].[SemesterOffering] ORDER BY StartDate desc, EndDate desc)
)
)
) GROUP BY CId

SELECT * FROM [survey].[Response] WHERE QId IN
(SELECT QId FROM [survey].[Question] a WHERE SurvId IN
(SELECT SurvId FROM [survey].[SurveyCourseMapping] WHERE CId IN 
(SELECT CId FROM [dv].[SemesterOffering] WHERE SoId = 
(SELECT TOP(1) SoId FROM [dv].[SemesterOffering] ORDER BY StartDate desc, EndDate desc)
)
)
)

---B)Show list of all survey questions and corresponding student’s responses received for 
--a particular course id and semester (startdate, enddate)
SELECT DISTINCT(QuestionText) FROM [survey].[Question] 
SELECT b.SoId, a.CId, a.SId, a.QId, a.Answer, b.StartDate, b.EndDate FROM [survey].[Response] a INNER JOIN [dv].[SemesterOffering] b ON a.CId = b.CId

--C) Get a list of all courses in last 3 years which were ranked 3 or higher by 80% of the 
--enrolled students for each course.
