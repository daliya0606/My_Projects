USE [Musey]
GO
/****** Object:  Table [dbo].[Act_Dvigenia]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Act_Dvigenia](
	[Number_Act] [int] IDENTITY(1,1) NOT NULL,
	[ID_Musey] [int] NULL,
	[ID_Museum_Fond] [int] NULL,
	[Date] [date] NULL,
	[ID_Vid] [int] NOT NULL,
	[Quantity_Predmetov] [int] NULL,
 CONSTRAINT [PK_Act_Dvigenia] PRIMARY KEY CLUSTERED 
(
	[Number_Act] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[ID_Author] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patranymic] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[Kod_Country] [int] NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[ID_Author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cartochka_Museum_Predmet]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cartochka_Museum_Predmet](
	[Inventarny_Nomer] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Date_Of_Creation] [date] NULL,
	[ID_Author] [int] NULL,
	[ID_Museum_Fond] [int] NULL,
 CONSTRAINT [PK_Cartochka_Museum_Predmet] PRIMARY KEY CLUSTERED 
(
	[Inventarny_Nomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Kod_City] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Kod_City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Kod_Country] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Kod_Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hranitel]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hranitel](
	[ID_Hranitel] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](12) NULL,
	[Oklad] [int] NULL,
	[Nadbavka] [int] NULL,
 CONSTRAINT [PK_Hranitel] PRIMARY KEY CLUSTERED 
(
	[ID_Hranitel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Museum_Fond]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Museum_Fond](
	[ID_Museum_Fond] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Open_Time] [time](7) NULL,
	[Close_Time] [time](7) NULL,
	[Phone_Number] [nvarchar](12) NOT NULL,
	[ID_Vid_Fonda] [int] NULL,
	[Kod_Street] [int] NULL,
	[Number_House] [nvarchar](5) NOT NULL,
	[ID_Hranitel] [int] NULL,
 CONSTRAINT [PK_Museum_Fond] PRIMARY KEY CLUSTERED 
(
	[ID_Museum_Fond] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musey]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musey](
	[ID_Musey] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone_Number] [nvarchar](12) NULL,
	[Kod_Street] [int] NULL,
	[Number_House] [nvarchar](5) NOT NULL,
	[ID_Rucovoditel] [int] NULL,
	[Open_Time] [time](7) NULL,
	[Close_Time] [time](7) NULL,
 CONSTRAINT [PK_Musey] PRIMARY KEY CLUSTERED 
(
	[ID_Musey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organisator]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisator](
	[ID_Organisator] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](12) NOT NULL,
	[Oklad] [int] NULL,
	[Nadbavka] [int] NULL,
 CONSTRAINT [PK_Organisator] PRIMARY KEY CLUSTERED 
(
	[ID_Organisator] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rucovoditel]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rucovoditel](
	[ID_Rucovoditel] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](12) NULL,
	[Oklad] [int] NULL,
	[Nadbavka] [int] NULL,
 CONSTRAINT [PK_Rucovoditel] PRIMARY KEY CLUSTERED 
(
	[ID_Rucovoditel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Kod_Street] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Kod_City] [int] NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Kod_Street] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vid_Dvigenia]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vid_Dvigenia](
	[ID_Vid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Vid_Dvigenia] PRIMARY KEY CLUSTERED 
(
	[ID_Vid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vid_Fonda]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vid_Fonda](
	[ID_Vid_Fonda] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Vid_Fonda] PRIMARY KEY CLUSTERED 
(
	[ID_Vid_Fonda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vistavka]    Script Date: 21.06.2024 12:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vistavka](
	[Kod_Vistavka] [int] IDENTITY(1,1) NOT NULL,
	[Day_Begin] [date] NULL,
	[Day_End] [date] NULL,
	[Name] [nvarchar](200) NULL,
	[ID_Musey] [int] NULL,
	[ID_Organisator] [int] NULL,
 CONSTRAINT [PK_Vistavka] PRIMARY KEY CLUSTERED 
(
	[Kod_Vistavka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Act_Dvigenia] ON 

INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (1, 2, 4, CAST(N'2020-06-20' AS Date), 2, 2)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (2, 3, 4, CAST(N'2024-06-20' AS Date), 3, 1)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (3, 4, 4, CAST(N'2021-06-20' AS Date), 5, 3)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (4, 2, 4, CAST(N'2024-06-20' AS Date), 3, 2)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (5, 5, 6, CAST(N'2023-01-15' AS Date), 2, 3)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (6, 5, 6, CAST(N'2024-05-01' AS Date), 3, 2)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (7, 5, 6, CAST(N'2023-08-19' AS Date), 3, 1)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (8, 2, 7, CAST(N'2021-02-28' AS Date), 2, 4)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (9, 4, 7, CAST(N'2020-11-12' AS Date), 2, 5)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (10, 2, 8, CAST(N'2023-05-10' AS Date), 3, 1)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (12, 10, 7, CAST(N'2024-06-21' AS Date), 3, 5)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (15, 11, 10, CAST(N'2024-02-25' AS Date), 1, 3)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (16, 12, 10, CAST(N'2023-12-11' AS Date), 4, 2)
INSERT [dbo].[Act_Dvigenia] ([Number_Act], [ID_Musey], [ID_Museum_Fond], [Date], [ID_Vid], [Quantity_Predmetov]) VALUES (17, 13, 10, CAST(N'2022-05-23' AS Date), 5, 1)
SET IDENTITY_INSERT [dbo].[Act_Dvigenia] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (4, N'Шишков', N'Владимир', N'Олегович', CAST(N'1550-07-26' AS Date), 1)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (5, N'Валерьянов', N'Анатолий', N'Сергеевич', CAST(N'1800-08-25' AS Date), 1)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (8, N'Ироан', N'Свят', N'Савини', CAST(N'1600-03-03' AS Date), 7)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (9, N'Бурмистров', N'Арсений', NULL, CAST(N'1900-01-20' AS Date), NULL)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (10, N'Верник', N'Арсений', N'Олегович', CAST(N'1725-12-25' AS Date), 7)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (11, N'Волкова', N'Юлиана', N'Валерьевна', CAST(N'1836-06-02' AS Date), 3)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (12, N'Султанова', N'Далия', N'Дамировна', CAST(N'1799-05-05' AS Date), 1)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (13, N'Давлетгараев', N'Аяз', N'Ниязович', CAST(N'1630-04-30' AS Date), 4)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (14, N'Хамматов', N'Булат', N'Иршатович', CAST(N'1550-02-23' AS Date), 1)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (15, N'Гаффарова ', N'Диана', NULL, CAST(N'1601-07-01' AS Date), 6)
INSERT [dbo].[Author] ([ID_Author], [Surname], [Name], [Patranymic], [Birthday], [Kod_Country]) VALUES (16, N'Гилязова', N'Латифа', N'Ильшатовна', CAST(N'1767-09-17' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Cartochka_Museum_Predmet] ON 

INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (2, N'Картина "Яблоня"', CAST(N'1620-01-03' AS Date), 15, 4)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (3, N'Скульпура "Давид"', CAST(N'1600-11-25' AS Date), 13, 4)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (4, N'Картина  "Девушка"', CAST(N'1648-03-18' AS Date), 15, 4)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (7, N'Кувшин ', CAST(N'1596-10-24' AS Date), 8, 4)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (8, N'Картины "Во дворе"', CAST(N'1680-04-04' AS Date), NULL, 4)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (11, N'"Фрагмент гобелена из замка"', CAST(N'1769-05-12' AS Date), 4, 6)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (12, N'"Портрет Екатерины Великой"', CAST(N'1587-11-23' AS Date), 5, 6)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (16, N'"Японский фарфоровый чайник"', CAST(N'1800-01-01' AS Date), 8, 6)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (17, N'"Картина "Звездная ночь""', CAST(N'1889-06-20' AS Date), 9, 7)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (18, N'"Музыкальная шкатулка с механизмом"', CAST(N'1850-01-01' AS Date), 8, 7)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (19, N'"Картина "Девушка с жемчужной', CAST(N'1620-01-01' AS Date), 5, 7)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (20, N'"Африканская маска"', CAST(N'1900-01-01' AS Date), NULL, 7)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (23, N'"Костюм эпохи Возрождения"', CAST(N'1520-01-01' AS Date), NULL, 8)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (24, N'"Ацтекский керамический сосуд"', CAST(N'1550-01-01' AS Date), NULL, 8)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (25, N'"Старинный компас"
1700-01-01', CAST(N'1700-10-04' AS Date), 10, 8)
INSERT [dbo].[Cartochka_Museum_Predmet] ([Inventarny_Nomer], [Name], [Date_Of_Creation], [ID_Author], [ID_Museum_Fond]) VALUES (26, N'"Японский меч "катана""
', CAST(N'1600-06-21' AS Date), 11, 8)
SET IDENTITY_INSERT [dbo].[Cartochka_Museum_Predmet] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Kod_City], [Name]) VALUES (1, N'Москва')
INSERT [dbo].[City] ([Kod_City], [Name]) VALUES (2, N'Санкт-Петербург')
INSERT [dbo].[City] ([Kod_City], [Name]) VALUES (3, N'Казань')
INSERT [dbo].[City] ([Kod_City], [Name]) VALUES (4, N'Нальчик')
INSERT [dbo].[City] ([Kod_City], [Name]) VALUES (5, N'Архангельск')
INSERT [dbo].[City] ([Kod_City], [Name]) VALUES (6, N'Владивосток')
INSERT [dbo].[City] ([Kod_City], [Name]) VALUES (7, N'Пермь')
INSERT [dbo].[City] ([Kod_City], [Name]) VALUES (8, N'Керч')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Kod_Country], [Name]) VALUES (1, N'Россия')
INSERT [dbo].[Country] ([Kod_Country], [Name]) VALUES (2, N'Китай')
INSERT [dbo].[Country] ([Kod_Country], [Name]) VALUES (3, N'Япония')
INSERT [dbo].[Country] ([Kod_Country], [Name]) VALUES (4, N'США')
INSERT [dbo].[Country] ([Kod_Country], [Name]) VALUES (5, N'Германия')
INSERT [dbo].[Country] ([Kod_Country], [Name]) VALUES (6, N'Великобритания')
INSERT [dbo].[Country] ([Kod_Country], [Name]) VALUES (7, N'Египет')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Hranitel] ON 

INSERT [dbo].[Hranitel] ([ID_Hranitel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (1, N'Камалов', N'Рамиль', N'Ильфатович', N'89520425283', 100000, 60000)
INSERT [dbo].[Hranitel] ([ID_Hranitel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (2, N'Машукова', N'Милена', N'Андреевна', N'+7947214824', 70000, 50000)
INSERT [dbo].[Hranitel] ([ID_Hranitel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (3, N'Габитов', N'Амир', N'Ирекович', N'89046739265', 85000, NULL)
INSERT [dbo].[Hranitel] ([ID_Hranitel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (4, N'Соболева', N'Ангелина', N'Романовна', N'+7920386184', 92000, 6000)
INSERT [dbo].[Hranitel] ([ID_Hranitel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (5, N'Смирнов', N'Владимир', N'Викторович', N'+7907637196', 75000, 10000)
INSERT [dbo].[Hranitel] ([ID_Hranitel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (6, N'Горгос', N'Валерия', N'Александровна', N'89065318874', 60000, 20000)
INSERT [dbo].[Hranitel] ([ID_Hranitel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (7, N'Гейдаров', N'Андрей', N'Риванович', N'+790587825', 110000, 23000)
SET IDENTITY_INSERT [dbo].[Hranitel] OFF
GO
SET IDENTITY_INSERT [dbo].[Museum_Fond] ON 

INSERT [dbo].[Museum_Fond] ([ID_Museum_Fond], [Name], [Open_Time], [Close_Time], [Phone_Number], [ID_Vid_Fonda], [Kod_Street], [Number_House], [ID_Hranitel]) VALUES (4, N'Хранилище Истории', CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), N'+78364758392', 1, 8, N'16', 1)
INSERT [dbo].[Museum_Fond] ([ID_Museum_Fond], [Name], [Open_Time], [Close_Time], [Phone_Number], [ID_Vid_Fonda], [Kod_Street], [Number_House], [ID_Hranitel]) VALUES (6, N' Сокровищница Культуры', CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), N'89372673941', 3, 12, N'20А', 2)
INSERT [dbo].[Museum_Fond] ([ID_Museum_Fond], [Name], [Open_Time], [Close_Time], [Phone_Number], [ID_Vid_Fonda], [Kod_Street], [Number_House], [ID_Hranitel]) VALUES (7, N'Коллекция Времени', CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), N'89028719457', 3, 13, N'1', 3)
INSERT [dbo].[Museum_Fond] ([ID_Museum_Fond], [Name], [Open_Time], [Close_Time], [Phone_Number], [ID_Vid_Fonda], [Kod_Street], [Number_House], [ID_Hranitel]) VALUES (8, N'Гранд Фонд ', CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), N'+79021852985', 5, 4, N'4/35', 4)
INSERT [dbo].[Museum_Fond] ([ID_Museum_Fond], [Name], [Open_Time], [Close_Time], [Phone_Number], [ID_Vid_Fonda], [Kod_Street], [Number_House], [ID_Hranitel]) VALUES (10, N'Архив Наследия ', CAST(N'14:00:00' AS Time), CAST(N'20:00:00' AS Time), N'+79478098271', 6, 3, N'9/10', 5)
SET IDENTITY_INSERT [dbo].[Museum_Fond] OFF
GO
SET IDENTITY_INSERT [dbo].[Musey] ON 

INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (2, N'Духи прошлого', N'89547685761', 5, N'5', 2, CAST(N'10:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (3, N'Эра настоящего', N'89647384427', 1, N'43', 3, CAST(N'15:00:00' AS Time), CAST(N'00:00:00' AS Time))
INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (4, N'Эпоха возрождения', N'89655814194', 7, N'3', 4, CAST(N'10:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (5, N'С замиранием', N'89996662224', 8, N'30', 5, CAST(N'12:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (9, N'Дом Забытых Историй', N'+79532464357', 10, N'2А', 6, CAST(N'10:00:00' AS Time), CAST(N'20:00:00' AS Time))
INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (10, N'Центр Современной Мысли', N'+79418429632', 11, N'5/7', 7, CAST(N'14:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (11, N'Хранилище Воображения', N'+70183659275', 1, N'4', 8, CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (12, N'Музей Искусств ', N'89309562381', 6, N'10В', 9, CAST(N'10:00:00' AS Time), CAST(N'00:00:00' AS Time))
INSERT [dbo].[Musey] ([ID_Musey], [Name], [Phone_Number], [Kod_Street], [Number_House], [ID_Rucovoditel], [Open_Time], [Close_Time]) VALUES (13, N'Музей живописи', N'.+7924719852', 9, N'8', 10, CAST(N'10:00:00' AS Time), CAST(N'20:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Musey] OFF
GO
SET IDENTITY_INSERT [dbo].[Organisator] ON 

INSERT [dbo].[Organisator] ([ID_Organisator], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (1, N'Альмухаметов', N'Марат', N'Ильдарович', N'89645712636', 120000, NULL)
INSERT [dbo].[Organisator] ([ID_Organisator], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (2, N'Асонова', N'Екатерина', N'Андреевна', N'89755243612', 90000, 50000)
INSERT [dbo].[Organisator] ([ID_Organisator], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (3, N'Хасанова', N'Алсу', N'Азатовна', N'89878757559', 80000, 40000)
INSERT [dbo].[Organisator] ([ID_Organisator], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (4, N'Галеев', N'Рамазан', N'Рафаэлевич', N'+79537949740', 100000, 50000)
INSERT [dbo].[Organisator] ([ID_Organisator], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (5, N'Гайфуллин', N'Наиль', N'Рафилович', N'+79752941038', 95000, 30000)
SET IDENTITY_INSERT [dbo].[Organisator] OFF
GO
SET IDENTITY_INSERT [dbo].[Rucovoditel] ON 

INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (2, N'Федянцева', N'Мария', NULL, N'+78393938484', 70000, 66500)
INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (3, N'Куликов ', N'Дмитрий', N'Иванович', N'89655814194', 85000, NULL)
INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (4, N'Портнев', N'Аркадий', N'Емельянович', N'89855567423', 100000, 50000)
INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (5, N'Авдеев', N'Никита', N'Алексеевич', N'87779996665', 83000, 53000)
INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (6, N'Краснова', N'Марина', N'Сергеевна', N'89437438100', 75000, NULL)
INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (7, N'Серябкина', N'Алена', N'Алексеевна', N'+79463879072', 90000, 70000)
INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (8, N'Шестиперова', N'Виктория', N'Александровна', N'89762106226', 110000, 40000)
INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (9, N'Чухарев', N'Леонид', N'Валерьевич', N'+79521963835', 115000, 55000)
INSERT [dbo].[Rucovoditel] ([ID_Rucovoditel], [Surname], [Name], [Patronymic], [Phone_Number], [Oklad], [Nadbavka]) VALUES (10, N'Темирзянов', N'Амир', N'Маратович', N'+79975638867', 90000, 30000)
SET IDENTITY_INSERT [dbo].[Rucovoditel] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (1, N'Светлая', 3)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (2, N'Светлая', 7)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (3, N'Темная', 2)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (4, N'Луговая', 1)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (5, N'Пушкинская', 8)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (6, N'Алексеевская', 5)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (7, N'Зорге', 3)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (8, N'Лукина', 3)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (9, N'Толстова', 1)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (10, N'Фрунзе', 4)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (11, N'Болотникова', 4)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (12, N'Серова', 4)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (13, N'Елова', 2)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (14, N'Гоголя', 2)
INSERT [dbo].[Street] ([Kod_Street], [Name], [Kod_City]) VALUES (15, N'Гагарина', 2)
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Vid_Dvigenia] ON 

INSERT [dbo].[Vid_Dvigenia] ([ID_Vid], [Name]) VALUES (1, N'Прием на хранение')
INSERT [dbo].[Vid_Dvigenia] ([ID_Vid], [Name]) VALUES (2, N'Передача на выставку')
INSERT [dbo].[Vid_Dvigenia] ([ID_Vid], [Name]) VALUES (3, N'Возвращение с выставки')
INSERT [dbo].[Vid_Dvigenia] ([ID_Vid], [Name]) VALUES (4, N'Списание')
INSERT [dbo].[Vid_Dvigenia] ([ID_Vid], [Name]) VALUES (5, N'Реставрация')
SET IDENTITY_INSERT [dbo].[Vid_Dvigenia] OFF
GO
SET IDENTITY_INSERT [dbo].[Vid_Fonda] ON 

INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (1, N'Живопись')
INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (2, N'Графика')
INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (3, N'Скульптура')
INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (4, N'Икона')
INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (5, N'ДПИ')
INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (6, N'Нумизматика')
INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (7, N'Археология')
INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (8, N'Рукописи')
INSERT [dbo].[Vid_Fonda] ([ID_Vid_Fonda], [Name]) VALUES (9, N'Редкая книга')
SET IDENTITY_INSERT [dbo].[Vid_Fonda] OFF
GO
SET IDENTITY_INSERT [dbo].[Vistavka] ON 

INSERT [dbo].[Vistavka] ([Kod_Vistavka], [Day_Begin], [Day_End], [Name], [ID_Musey], [ID_Organisator]) VALUES (1, CAST(N'2020-01-05' AS Date), CAST(N'2020-01-10' AS Date), N'Шепот Времени', 2, 1)
INSERT [dbo].[Vistavka] ([Kod_Vistavka], [Day_Begin], [Day_End], [Name], [ID_Musey], [ID_Organisator]) VALUES (2, CAST(N'2021-07-04' AS Date), CAST(N'2021-08-04' AS Date), N'За гранью восприятия', 2, 2)
INSERT [dbo].[Vistavka] ([Kod_Vistavka], [Day_Begin], [Day_End], [Name], [ID_Musey], [ID_Organisator]) VALUES (3, CAST(N'2024-04-01' AS Date), CAST(N'2024-04-11' AS Date), N'Тайны, спрятанные в тени', 2, 1)
INSERT [dbo].[Vistavka] ([Kod_Vistavka], [Day_Begin], [Day_End], [Name], [ID_Musey], [ID_Organisator]) VALUES (4, CAST(N'2021-06-01' AS Date), CAST(N'2021-08-31' AS Date), N'Отражения', 5, 3)
INSERT [dbo].[Vistavka] ([Kod_Vistavka], [Day_Begin], [Day_End], [Name], [ID_Musey], [ID_Organisator]) VALUES (5, CAST(N'2022-03-15' AS Date), CAST(N'2022-03-17' AS Date), N'Незримые нити', 3, 3)
INSERT [dbo].[Vistavka] ([Kod_Vistavka], [Day_Begin], [Day_End], [Name], [ID_Musey], [ID_Organisator]) VALUES (6, CAST(N'2023-11-20' AS Date), CAST(N'2023-12-25' AS Date), N'Игра Форм и Цветов', 4, 4)
INSERT [dbo].[Vistavka] ([Kod_Vistavka], [Day_Begin], [Day_End], [Name], [ID_Musey], [ID_Organisator]) VALUES (7, CAST(N'2023-10-05' AS Date), CAST(N'2023-10-10' AS Date), N'Мир без границ', 4, 5)
SET IDENTITY_INSERT [dbo].[Vistavka] OFF
GO
ALTER TABLE [dbo].[Act_Dvigenia] ADD  CONSTRAINT [DF_Act_Dvigenia_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Act_Dvigenia] ADD  CONSTRAINT [DF_Act_Dvigenia_Quantity_Predmetov]  DEFAULT ((1)) FOR [Quantity_Predmetov]
GO
ALTER TABLE [dbo].[Museum_Fond] ADD  CONSTRAINT [DF_Museum_Fond_Open_Time]  DEFAULT ('08:00:00') FOR [Open_Time]
GO
ALTER TABLE [dbo].[Museum_Fond] ADD  CONSTRAINT [DF_Museum_Fond_Close_Time]  DEFAULT ('18:00:00') FOR [Close_Time]
GO
ALTER TABLE [dbo].[Musey] ADD  CONSTRAINT [DF_Musey_Open_Time_1]  DEFAULT ('10:00:00') FOR [Open_Time]
GO
ALTER TABLE [dbo].[Musey] ADD  CONSTRAINT [DF_Musey_Close_Time]  DEFAULT ('20:00:00') FOR [Close_Time]
GO
ALTER TABLE [dbo].[Act_Dvigenia]  WITH CHECK ADD  CONSTRAINT [FK_Act_Dvigenia_Museum_Fond] FOREIGN KEY([ID_Museum_Fond])
REFERENCES [dbo].[Museum_Fond] ([ID_Museum_Fond])
GO
ALTER TABLE [dbo].[Act_Dvigenia] CHECK CONSTRAINT [FK_Act_Dvigenia_Museum_Fond]
GO
ALTER TABLE [dbo].[Act_Dvigenia]  WITH CHECK ADD  CONSTRAINT [FK_Act_Dvigenia_Musey] FOREIGN KEY([ID_Musey])
REFERENCES [dbo].[Musey] ([ID_Musey])
GO
ALTER TABLE [dbo].[Act_Dvigenia] CHECK CONSTRAINT [FK_Act_Dvigenia_Musey]
GO
ALTER TABLE [dbo].[Act_Dvigenia]  WITH CHECK ADD  CONSTRAINT [FK_Act_Dvigenia_Vid_Dvigenia1] FOREIGN KEY([ID_Vid])
REFERENCES [dbo].[Vid_Dvigenia] ([ID_Vid])
GO
ALTER TABLE [dbo].[Act_Dvigenia] CHECK CONSTRAINT [FK_Act_Dvigenia_Vid_Dvigenia1]
GO
ALTER TABLE [dbo].[Author]  WITH CHECK ADD  CONSTRAINT [FK_Author_Country] FOREIGN KEY([Kod_Country])
REFERENCES [dbo].[Country] ([Kod_Country])
GO
ALTER TABLE [dbo].[Author] CHECK CONSTRAINT [FK_Author_Country]
GO
ALTER TABLE [dbo].[Cartochka_Museum_Predmet]  WITH CHECK ADD  CONSTRAINT [FK_Cartochka_Museum_Predmet_Author] FOREIGN KEY([ID_Author])
REFERENCES [dbo].[Author] ([ID_Author])
GO
ALTER TABLE [dbo].[Cartochka_Museum_Predmet] CHECK CONSTRAINT [FK_Cartochka_Museum_Predmet_Author]
GO
ALTER TABLE [dbo].[Cartochka_Museum_Predmet]  WITH CHECK ADD  CONSTRAINT [FK_Cartochka_Museum_Predmet_Museum_Fond] FOREIGN KEY([ID_Museum_Fond])
REFERENCES [dbo].[Museum_Fond] ([ID_Museum_Fond])
GO
ALTER TABLE [dbo].[Cartochka_Museum_Predmet] CHECK CONSTRAINT [FK_Cartochka_Museum_Predmet_Museum_Fond]
GO
ALTER TABLE [dbo].[Museum_Fond]  WITH CHECK ADD  CONSTRAINT [FK_Museum_Fond_Hranitel] FOREIGN KEY([ID_Hranitel])
REFERENCES [dbo].[Hranitel] ([ID_Hranitel])
GO
ALTER TABLE [dbo].[Museum_Fond] CHECK CONSTRAINT [FK_Museum_Fond_Hranitel]
GO
ALTER TABLE [dbo].[Museum_Fond]  WITH CHECK ADD  CONSTRAINT [FK_Museum_Fond_Street] FOREIGN KEY([Kod_Street])
REFERENCES [dbo].[Street] ([Kod_Street])
GO
ALTER TABLE [dbo].[Museum_Fond] CHECK CONSTRAINT [FK_Museum_Fond_Street]
GO
ALTER TABLE [dbo].[Museum_Fond]  WITH CHECK ADD  CONSTRAINT [FK_Museum_Fond_Vid_Fonda1] FOREIGN KEY([ID_Vid_Fonda])
REFERENCES [dbo].[Vid_Fonda] ([ID_Vid_Fonda])
GO
ALTER TABLE [dbo].[Museum_Fond] CHECK CONSTRAINT [FK_Museum_Fond_Vid_Fonda1]
GO
ALTER TABLE [dbo].[Musey]  WITH CHECK ADD  CONSTRAINT [FK_Musey_Rucovoditel1] FOREIGN KEY([ID_Rucovoditel])
REFERENCES [dbo].[Rucovoditel] ([ID_Rucovoditel])
GO
ALTER TABLE [dbo].[Musey] CHECK CONSTRAINT [FK_Musey_Rucovoditel1]
GO
ALTER TABLE [dbo].[Musey]  WITH CHECK ADD  CONSTRAINT [FK_Musey_Street] FOREIGN KEY([Kod_Street])
REFERENCES [dbo].[Street] ([Kod_Street])
GO
ALTER TABLE [dbo].[Musey] CHECK CONSTRAINT [FK_Musey_Street]
GO
ALTER TABLE [dbo].[Street]  WITH CHECK ADD  CONSTRAINT [FK_Street_City] FOREIGN KEY([Kod_City])
REFERENCES [dbo].[City] ([Kod_City])
GO
ALTER TABLE [dbo].[Street] CHECK CONSTRAINT [FK_Street_City]
GO
ALTER TABLE [dbo].[Vistavka]  WITH CHECK ADD  CONSTRAINT [FK_Vistavka_Musey] FOREIGN KEY([ID_Musey])
REFERENCES [dbo].[Musey] ([ID_Musey])
GO
ALTER TABLE [dbo].[Vistavka] CHECK CONSTRAINT [FK_Vistavka_Musey]
GO
ALTER TABLE [dbo].[Vistavka]  WITH CHECK ADD  CONSTRAINT [FK_Vistavka_Organisator1] FOREIGN KEY([ID_Organisator])
REFERENCES [dbo].[Organisator] ([ID_Organisator])
GO
ALTER TABLE [dbo].[Vistavka] CHECK CONSTRAINT [FK_Vistavka_Organisator1]
GO
ALTER TABLE [dbo].[Act_Dvigenia]  WITH CHECK ADD  CONSTRAINT [CK_Act_Dvigenia] CHECK  (([Quantity_Predmetov]>=(1) AND [Quantity_Predmetov]<=(20)))
GO
ALTER TABLE [dbo].[Act_Dvigenia] CHECK CONSTRAINT [CK_Act_Dvigenia]
GO
ALTER TABLE [dbo].[Author]  WITH CHECK ADD  CONSTRAINT [CK_Author] CHECK  (([Birthday]>='1500-01-01' AND [Birthday]<='1900-12-12'))
GO
ALTER TABLE [dbo].[Author] CHECK CONSTRAINT [CK_Author]
GO
ALTER TABLE [dbo].[Cartochka_Museum_Predmet]  WITH CHECK ADD  CONSTRAINT [CK_Cartochka_Museum_Predmet] CHECK  (([Date_Of_Creation]>='1519-01-01'))
GO
ALTER TABLE [dbo].[Cartochka_Museum_Predmet] CHECK CONSTRAINT [CK_Cartochka_Museum_Predmet]
GO
ALTER TABLE [dbo].[Hranitel]  WITH CHECK ADD  CONSTRAINT [CK_Hranitel] CHECK  (([Oklad]>=(50000) AND [Nadbavka]<=(80000)))
GO
ALTER TABLE [dbo].[Hranitel] CHECK CONSTRAINT [CK_Hranitel]
GO
ALTER TABLE [dbo].[Organisator]  WITH CHECK ADD  CONSTRAINT [CK_Organisator] CHECK  (([Oklad]>=(80000) AND [Nadbavka]<=(120000)))
GO
ALTER TABLE [dbo].[Organisator] CHECK CONSTRAINT [CK_Organisator]
GO
ALTER TABLE [dbo].[Rucovoditel]  WITH CHECK ADD  CONSTRAINT [CK_Rucovoditel] CHECK  (([Oklad]>=(70000)))
GO
ALTER TABLE [dbo].[Rucovoditel] CHECK CONSTRAINT [CK_Rucovoditel]
GO
ALTER TABLE [dbo].[Rucovoditel]  WITH CHECK ADD  CONSTRAINT [CK_Rucovoditel_1] CHECK  (([Nadbavka]<=(100000)))
GO
ALTER TABLE [dbo].[Rucovoditel] CHECK CONSTRAINT [CK_Rucovoditel_1]
GO
