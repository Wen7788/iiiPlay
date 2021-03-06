USE [GameDB]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2020/6/9 下午 07:38:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[articleid] [int] IDENTITY(1000,1) NOT NULL,
	[title] [nvarchar](60) NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](10) NULL,
	[detail] [nvarchar](1000) NULL,
	[publishtime] [datetime] NULL,
	[status] [int] NULL,
	[boardid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[articleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1000, N'為什麼天氣忽熱忽冷', N'史奴比', N'問題', N'<p>為什麼天氣忽熱忽冷</p>
', CAST(N'2020-06-01T19:55:23.403' AS DateTime), 0, 1)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1001, N'環境真的容易影響一個人嗎', N'史奴比', N'討論', N'<h1>環境真的容易影響一個人嗎</h1>
', CAST(N'2020-06-01T20:02:49.247' AS DateTime), 1, 1)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1002, N'如果警察用膝蓋壓館長的脖子會怎樣', N'史奴比', N'閒聊', N'<h1>如果警察用膝蓋壓館長的脖子會怎樣</h1>
', CAST(N'2020-06-01T20:03:48.797' AS DateTime), 1, 1)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1003, N'英雄的微操開發', N'詹姆斯', N'閒聊', N'<p>英雄的微操開發</p>
', CAST(N'2020-06-01T20:05:27.827' AS DateTime), 1, 2)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1004, N'努努雪球bug', N'詹姆斯', N'問題', N'<h1>努努雪球bug</h1>
', CAST(N'2020-06-01T20:05:48.693' AS DateTime), 1, 2)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1005, N'2080s使用率低的問題', N'詹姆斯', N'問題', N'<h1>2080s使用率低的問題</h1>
', CAST(N'2020-06-01T20:11:04.640' AS DateTime), 1, 3)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1006, N'絕地求生 通行證任務大合集與完成攻略辦法', N'詹姆斯', N'密技', N'<h1>絕地求生 通行證任務大合集與完成攻略辦法</h1>
', CAST(N'2020-06-01T20:11:41.867' AS DateTime), 1, 3)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1007, N'最近被盜號的快去STEAM查登入紀錄', N'詹姆斯', N'情報', N'<h1>最近被盜號的快去STEAM查登入紀錄最近被盜號的快去STEAM查登入紀錄</h1>
', CAST(N'2020-06-01T20:12:08.317' AS DateTime), 1, 3)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1008, N'傳說對決 全角色語音 刺客篇', N'詹姆斯', N'心得', N'<h1>傳說對決 全角色語音 刺客篇</h1>
', CAST(N'2020-06-01T20:13:25.203' AS DateTime), 1, 4)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1009, N'羈絆建立', N'詹姆斯', N'心得', N'<h1>羈絆建立</h1>
', CAST(N'2020-06-01T20:15:07.260' AS DateTime), 1, 4)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1010, N'鬥陣特攻怎麼玩?讓我來教你!(輔助的責任及輔助角色的基本操作和概念篇)', N'詹姆斯', N'密技', N'<p>鬥陣特攻怎麼玩?讓我來教你!(輔助的責任及輔助角色的基本操作和概念篇)</p>
', CAST(N'2020-06-01T20:18:48.287' AS DateTime), 1, 5)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1011, N'《認識新楓之谷》14年包子， 給新手與老手的停看聽。', N'詹姆斯', N'心得', N'<p>《認識新楓之谷》14年包子， 給新手與老手的停看聽。</p>
', CAST(N'2020-06-01T20:19:47.113' AS DateTime), 1, 6)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1012, N'switch lite玩動森的單機多人模式?', N'詹姆斯', N'問題', N'<p><strong>switch lite玩動森的單機多人模式?</strong></p>
', CAST(N'2020-06-01T20:20:35.277' AS DateTime), 1, 7)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1013, N'極速致富 - 狼蛛島', N'詹姆斯', N'情報', N'<p>極速致富 - 狼蛛島</p>
', CAST(N'2020-06-01T20:21:00.940' AS DateTime), 1, 7)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1014, N'"無償"搬家鄰居收留串', N'詹姆斯', N'其他', N'<p>&quot;無償&quot;搬家鄰居收留串</p>
', CAST(N'2020-06-01T20:21:22.900' AS DateTime), 1, 7)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1015, N'回鍋怎麼玩', N'史奴比', N'問題', N'<p>任務解到恆春谷</p>

<p>我是法師</p>

<p>怪根本打不動</p>

<p>任務怪我都要打半天</p>

<p>突擊戰這一類的任務目標我基本沒辦法達成</p>

<p>&nbsp;</p>

<p>朋友要我一直解任務解到有橙色披風</p>

<p>我快拿到了嗎</p>

<p>一個小怪我都可以死上五次才打贏</p>

<p>難度對回鍋玩家設計的是不是很爛</p>

<p>&nbsp;</p>

<p>朋友說橙色披風是黑龍王子給的</p>

<p>但是黑龍王子根本沒任務阿</p>

<p>我在恆春古也是解鑽石矮人的任務</p>
', CAST(N'2020-06-09T16:42:16.017' AS DateTime), 1, 8)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1016, N'圍城裡的任務', N'史奴比', N'討論', N'<p>昨天打圍城在路上隨手接了個任務</p>

<p>去暴風圖書館交了以後</p>

<p>看了一段動畫</p>

<p>用歌劇呈現、在罵珍娜害死她爸爸</p>

<p>後面她取得幽靈船是當初救小獅子那艄船嗎？</p>
', CAST(N'2020-06-09T16:43:26.347' AS DateTime), 1, 8)
INSERT [dbo].[Article] ([articleid], [title], [name], [category], [detail], [publishtime], [status], [boardid]) VALUES (1017, N'BNB海盜14十週年高手定位實力分析排行榜!', N'史奴比', N'情報', N'<p>筆者玩爆爆王大概也有十年的時間，曾經接觸過海盜區各大工會的高手，對這遊戲的歷史也算是有一定的了解，雖然許多曾經的高手因為中途退出或是荒廢，但本人還是以最顛峰狀態的實力來做評比，以下實力等級分析排行是筆者個人的心中的一把尺，雖然分析結果可能會有爭議或有缺失，但本人還是力求以公正客觀的角度來作評論.<br />
<br />
<br />
<br />
實力階級定位分析標準:<br />
<br />
<br />
<strong>殿堂級:</strong>台服BNB金字塔最頂端的絕代高手，單挑實力幾乎可以稱霸整個台服<br />
就連傳說級的高手要打贏殿堂級的也都有一定的難度，在台服海盜的技術歷程<br />
碑上寫下了最光輝榮耀的一頁<br />
<br />
<br />
<strong>傳說級:</strong>台服海盜14的一流高手，實力雖然略輸殿堂級但都有與其一較高下的<br />
實力，其身懷令人驚豔的絕技 個個在海盜14獨領風騷，他們無與倫比的技術<br />
令人望塵莫及 讓眾多玩家讚嘆仰慕<br />
<br />
<br />
<strong>大師級:</strong>精通會玩的大內高手 其實力強悍無比，在海盜14的技術上大有所成<br />
個個驍勇善戰有獨霸一方的實力，其技術甚至有能和傳說級實力的高手抗衡<br />
<br />
<br />
<strong>菁英級:</strong>打法出眾 技巧純熟會玩的箇中強手，對於海盜14的玩法有深刻的了解，<br />
其實力不同凡響 技術卓越出色</p>
', CAST(N'2020-06-09T16:46:01.323' AS DateTime), 1, 9)
SET IDENTITY_INSERT [dbo].[Article] OFF
