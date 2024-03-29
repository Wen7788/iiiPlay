USE [GameDB]
GO
/****** Object:  Table [dbo].[Click]    Script Date: 2020/6/9 下午 07:38:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Click](
	[clickid] [int] IDENTITY(1,1) NOT NULL,
	[articleid] [int] NULL,
	[ccount] [int] NULL,
	[createtime] [datetime] NULL,
	[updatetime] [datetime] NULL,
	[recorddate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[clickid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Click] ON 

INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (1, 1001, 16, CAST(N'2020-05-26T09:09:45.427' AS DateTime), CAST(N'2020-05-26T16:52:50.430' AS DateTime), CAST(N'2020-05-26' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (2, 1003, 31, CAST(N'2020-05-26T09:10:29.977' AS DateTime), CAST(N'2020-05-26T19:13:23.243' AS DateTime), CAST(N'2020-05-26' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (3, 1000, 1, CAST(N'2020-05-26T09:10:38.723' AS DateTime), NULL, CAST(N'2020-05-26' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (4, 1002, 1, CAST(N'2020-05-26T09:10:43.427' AS DateTime), NULL, CAST(N'2020-05-26' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (5, 1004, 2, CAST(N'2020-05-27T16:33:46.757' AS DateTime), CAST(N'2020-05-27T16:36:45.920' AS DateTime), CAST(N'2020-05-27' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (6, 1004, 5, CAST(N'2020-05-28T10:40:33.197' AS DateTime), CAST(N'2020-05-28T19:30:55.277' AS DateTime), CAST(N'2020-05-28' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (7, 1003, 1, CAST(N'2020-05-28T19:24:04.207' AS DateTime), NULL, CAST(N'2020-05-28' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (8, 1001, 1, CAST(N'2020-05-28T19:24:10.423' AS DateTime), NULL, CAST(N'2020-05-28' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (9, 1004, 24, CAST(N'2020-05-29T10:11:36.723' AS DateTime), CAST(N'2020-05-29T17:20:40.247' AS DateTime), CAST(N'2020-05-29' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (10, 1004, 8, CAST(N'2020-06-01T09:50:39.183' AS DateTime), CAST(N'2020-06-01T14:57:07.367' AS DateTime), CAST(N'2020-06-01' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (11, 1000, 2, CAST(N'2020-06-01T13:57:44.577' AS DateTime), CAST(N'2020-06-01T18:42:55.350' AS DateTime), CAST(N'2020-06-01' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (12, 1003, 55, CAST(N'2020-06-01T14:25:24.710' AS DateTime), CAST(N'2020-06-01T16:35:07.720' AS DateTime), CAST(N'2020-06-01' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (13, 1005, 3, CAST(N'2020-06-01T16:16:15.907' AS DateTime), CAST(N'2020-06-01T16:25:56.560' AS DateTime), CAST(N'2020-06-01' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (14, 1007, 1, CAST(N'2020-06-02T10:49:29.100' AS DateTime), NULL, CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (15, 1002, 8, CAST(N'2020-06-02T10:51:49.753' AS DateTime), CAST(N'2020-06-02T20:34:30.803' AS DateTime), CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (16, 1000, 45, CAST(N'2020-06-02T11:00:47.257' AS DateTime), CAST(N'2020-06-02T20:36:22.740' AS DateTime), CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (17, 1011, 5, CAST(N'2020-06-02T12:42:01.013' AS DateTime), CAST(N'2020-06-02T14:08:19.713' AS DateTime), CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (18, 1014, 19, CAST(N'2020-06-02T15:39:22.667' AS DateTime), CAST(N'2020-06-02T19:13:57.730' AS DateTime), CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (19, 1013, 14, CAST(N'2020-06-02T15:39:38.440' AS DateTime), CAST(N'2020-06-02T15:39:41.990' AS DateTime), CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (20, 1012, 27, CAST(N'2020-06-02T15:39:51.690' AS DateTime), CAST(N'2020-06-02T19:14:06.103' AS DateTime), CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (21, 1006, 12, CAST(N'2020-06-02T15:42:05.267' AS DateTime), CAST(N'2020-06-02T15:42:08.753' AS DateTime), CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (22, 1010, 1, CAST(N'2020-06-02T19:14:01.260' AS DateTime), NULL, CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (23, 1004, 5, CAST(N'2020-06-02T19:14:16.570' AS DateTime), CAST(N'2020-06-02T19:14:39.160' AS DateTime), CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (24, 1007, 19, CAST(N'2020-06-03T10:47:32.327' AS DateTime), CAST(N'2020-06-03T20:29:30.320' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (25, 1006, 12, CAST(N'2020-06-03T10:47:42.310' AS DateTime), CAST(N'2020-06-03T10:47:44.487' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (26, 1005, 4, CAST(N'2020-06-03T10:47:48.770' AS DateTime), CAST(N'2020-06-03T10:47:49.463' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (27, 1010, 19, CAST(N'2020-06-03T10:48:04.360' AS DateTime), CAST(N'2020-06-03T10:48:08.610' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (28, 1000, 22, CAST(N'2020-06-03T10:48:41.923' AS DateTime), CAST(N'2020-06-03T19:41:37.167' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (29, 1014, 21, CAST(N'2020-06-03T14:16:41.403' AS DateTime), CAST(N'2020-06-03T16:48:12.197' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (30, 1012, 6, CAST(N'2020-06-03T14:16:45.393' AS DateTime), CAST(N'2020-06-03T14:16:46.400' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (31, 1002, 17, CAST(N'2020-06-03T15:51:50.200' AS DateTime), CAST(N'2020-06-03T16:01:35.013' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (32, 1004, 2, CAST(N'2020-06-03T16:49:23.653' AS DateTime), CAST(N'2020-06-03T16:49:47.393' AS DateTime), CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (33, 1013, 6, CAST(N'2020-06-04T10:45:39.903' AS DateTime), CAST(N'2020-06-04T10:46:26.077' AS DateTime), CAST(N'2020-06-04' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (34, 1002, 1, CAST(N'2020-06-04T13:56:22.457' AS DateTime), NULL, CAST(N'2020-06-04' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (35, 1004, 1, CAST(N'2020-06-04T20:19:17.163' AS DateTime), NULL, CAST(N'2020-06-04' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (36, 1002, 27, CAST(N'2020-06-05T09:43:20.807' AS DateTime), CAST(N'2020-06-05T19:20:44.287' AS DateTime), CAST(N'2020-06-05' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (37, 1000, 11, CAST(N'2020-06-05T10:09:16.763' AS DateTime), CAST(N'2020-06-05T16:10:51.600' AS DateTime), CAST(N'2020-06-05' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (38, 1004, 3, CAST(N'2020-06-05T19:29:11.467' AS DateTime), CAST(N'2020-06-05T20:15:02.830' AS DateTime), CAST(N'2020-06-05' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (39, 1009, 2, CAST(N'2020-06-05T23:14:37.367' AS DateTime), CAST(N'2020-06-05T23:14:39.207' AS DateTime), CAST(N'2020-06-05' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (40, 1013, 2, CAST(N'2020-06-05T23:14:54.473' AS DateTime), CAST(N'2020-06-05T23:14:55.823' AS DateTime), CAST(N'2020-06-05' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (41, 1012, 2, CAST(N'2020-06-05T23:15:18.643' AS DateTime), CAST(N'2020-06-05T23:15:20.163' AS DateTime), CAST(N'2020-06-05' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (42, 1004, 16, CAST(N'2020-06-06T12:19:00.257' AS DateTime), CAST(N'2020-06-06T16:03:17.833' AS DateTime), CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (43, 1003, 1, CAST(N'2020-06-06T12:34:43.417' AS DateTime), NULL, CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (44, 1007, 5, CAST(N'2020-06-06T13:54:35.097' AS DateTime), CAST(N'2020-06-06T14:04:49.417' AS DateTime), CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (45, 1014, 4, CAST(N'2020-06-06T13:54:48.013' AS DateTime), CAST(N'2020-06-06T13:54:50.070' AS DateTime), CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (46, 1012, 3, CAST(N'2020-06-06T13:55:01.593' AS DateTime), CAST(N'2020-06-06T13:55:03.167' AS DateTime), CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (47, 1010, 6, CAST(N'2020-06-06T14:16:50.987' AS DateTime), CAST(N'2020-06-06T14:41:27.757' AS DateTime), CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (48, 1009, 22, CAST(N'2020-06-06T14:44:22.947' AS DateTime), CAST(N'2020-06-06T15:19:46.890' AS DateTime), CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (49, 1009, 10, CAST(N'2020-06-07T14:28:04.373' AS DateTime), CAST(N'2020-06-07T14:31:42.500' AS DateTime), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (50, 1011, 4, CAST(N'2020-06-07T14:41:06.467' AS DateTime), CAST(N'2020-06-07T15:04:16.433' AS DateTime), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (51, 1012, 3, CAST(N'2020-06-07T15:02:06.330' AS DateTime), CAST(N'2020-06-07T15:03:28.477' AS DateTime), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (52, 1008, 2, CAST(N'2020-06-07T15:03:57.470' AS DateTime), CAST(N'2020-06-07T15:03:59.130' AS DateTime), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (53, 1013, 2, CAST(N'2020-06-07T15:04:27.480' AS DateTime), CAST(N'2020-06-07T15:04:29.023' AS DateTime), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (54, 1003, 11, CAST(N'2020-06-07T18:02:41.690' AS DateTime), CAST(N'2020-06-07T18:23:03.497' AS DateTime), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (55, 1014, 1, CAST(N'2020-06-07T20:33:44.270' AS DateTime), NULL, CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (56, 1002, 1, CAST(N'2020-06-07T20:36:33.523' AS DateTime), NULL, CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (57, 1014, 6, CAST(N'2020-06-08T09:13:46.977' AS DateTime), CAST(N'2020-06-08T13:54:28.267' AS DateTime), CAST(N'2020-06-08' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (58, 1002, 5, CAST(N'2020-06-08T09:51:35.140' AS DateTime), CAST(N'2020-06-08T13:52:00.990' AS DateTime), CAST(N'2020-06-08' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (59, 1000, 21, CAST(N'2020-06-08T09:51:44.270' AS DateTime), CAST(N'2020-06-08T09:59:27.007' AS DateTime), CAST(N'2020-06-08' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (60, 1014, 3, CAST(N'2020-06-09T15:06:54.503' AS DateTime), CAST(N'2020-06-09T15:07:08.987' AS DateTime), CAST(N'2020-06-09' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (61, 1007, 3, CAST(N'2020-06-09T15:08:22.947' AS DateTime), CAST(N'2020-06-09T15:09:03.677' AS DateTime), CAST(N'2020-06-09' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (62, 1000, 1, CAST(N'2020-06-09T16:23:22.190' AS DateTime), NULL, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (63, 1017, 25, CAST(N'2020-06-09T16:49:52.093' AS DateTime), CAST(N'2020-06-09T19:35:48.333' AS DateTime), CAST(N'2020-06-09' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (64, 1016, 2, CAST(N'2020-06-09T18:27:11.517' AS DateTime), CAST(N'2020-06-09T18:27:20.243' AS DateTime), CAST(N'2020-06-09' AS Date))
INSERT [dbo].[Click] ([clickid], [articleid], [ccount], [createtime], [updatetime], [recorddate]) VALUES (65, 1015, 1, CAST(N'2020-06-09T18:27:15.033' AS DateTime), NULL, CAST(N'2020-06-09' AS Date))
SET IDENTITY_INSERT [dbo].[Click] OFF
