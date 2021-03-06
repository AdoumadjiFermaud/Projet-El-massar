USE [SOCIETE EL-MASSAR]
GO
/****** Object:  Table [dbo].[agents]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agents](
	[id_agent] [int] NOT NULL,
	[nom] [varchar](255) NOT NULL,
	[prenom] [varchar](255) NOT NULL,
	[adresse] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_agent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appartements]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appartements](
	[num_appart] [int] NOT NULL,
	[ligne_adresse] [varchar](255) NOT NULL,
	[code_postal] [int] NOT NULL,
	[ville] [varchar](255) NOT NULL,
	[pays] [varchar](255) NOT NULL,
	[batiment] [varchar](255) NOT NULL,
	[id_etage] [int] NULL,
	[reference] [int] NULL,
	[id_clients] [int] NULL,
	[id_agents] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_appart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorie_garages]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie_garages](
	[reference] [int] NOT NULL,
	[automobile] [varchar](255) NOT NULL,
	[motocycle] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[id_client] [int] NOT NULL,
	[nom] [varchar](255) NOT NULL,
	[prenom] [varchar](255) NOT NULL,
	[adresse] [varchar](255) NOT NULL,
	[categorie] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[determiner_mettre_carre]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[determiner_mettre_carre](
	[reference] [int] NOT NULL,
	[id_etages] [int] NULL,
	[id_residences] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[determiner_prix]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[determiner_prix](
	[ref] [int] NOT NULL,
	[reference] [int] NULL,
	[id_residences] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[disposer]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disposer](
	[ref1] [int] NOT NULL,
	[reference] [int] NULL,
	[num_garage] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ref1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etages]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etages](
	[id] [int] NOT NULL,
	[niveau] [varchar](255) NOT NULL,
	[nombre_appart] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garages]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garages](
	[num_garage] [int] NOT NULL,
	[nom] [varchar](255) NOT NULL,
	[nombre_materiel] [int] NOT NULL,
	[id_clients] [int] NULL,
	[id_agents] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_garage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[residences]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[residences](
	[id_residence] [int] NOT NULL,
	[nom] [varchar](255) NOT NULL,
	[ville] [varchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[adresse] [varchar](255) NOT NULL,
	[num_appart] [int] NULL,
	[num_garage] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_residence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_appartements]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_appartements](
	[reference] [int] NOT NULL,
	[individuel] [varchar](255) NOT NULL,
	[collectif] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_garages]    Script Date: 11/02/2022 10:38:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_garages](
	[reference] [int] NOT NULL,
	[acole] [varchar](255) NOT NULL,
	[lateral] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[appartements]  WITH CHECK ADD FOREIGN KEY([id_agents])
REFERENCES [dbo].[agents] ([id_agent])
GO
ALTER TABLE [dbo].[appartements]  WITH CHECK ADD FOREIGN KEY([id_clients])
REFERENCES [dbo].[clients] ([id_client])
GO
ALTER TABLE [dbo].[appartements]  WITH CHECK ADD FOREIGN KEY([id_etage])
REFERENCES [dbo].[etages] ([id])
GO
ALTER TABLE [dbo].[appartements]  WITH CHECK ADD FOREIGN KEY([reference])
REFERENCES [dbo].[type_appartements] ([reference])
GO
ALTER TABLE [dbo].[determiner_mettre_carre]  WITH CHECK ADD FOREIGN KEY([id_etages])
REFERENCES [dbo].[etages] ([id])
GO
ALTER TABLE [dbo].[determiner_mettre_carre]  WITH CHECK ADD FOREIGN KEY([id_residences])
REFERENCES [dbo].[residences] ([id_residence])
GO
ALTER TABLE [dbo].[determiner_prix]  WITH CHECK ADD FOREIGN KEY([id_residences])
REFERENCES [dbo].[residences] ([id_residence])
GO
ALTER TABLE [dbo].[determiner_prix]  WITH CHECK ADD FOREIGN KEY([reference])
REFERENCES [dbo].[categorie_garages] ([reference])
GO
ALTER TABLE [dbo].[disposer]  WITH CHECK ADD FOREIGN KEY([num_garage])
REFERENCES [dbo].[garages] ([num_garage])
GO
ALTER TABLE [dbo].[disposer]  WITH CHECK ADD FOREIGN KEY([reference])
REFERENCES [dbo].[type_garages] ([reference])
GO
ALTER TABLE [dbo].[garages]  WITH CHECK ADD FOREIGN KEY([id_agents])
REFERENCES [dbo].[agents] ([id_agent])
GO
ALTER TABLE [dbo].[garages]  WITH CHECK ADD FOREIGN KEY([id_clients])
REFERENCES [dbo].[clients] ([id_client])
GO
ALTER TABLE [dbo].[residences]  WITH CHECK ADD FOREIGN KEY([num_appart])
REFERENCES [dbo].[appartements] ([num_appart])
GO
ALTER TABLE [dbo].[residences]  WITH CHECK ADD FOREIGN KEY([num_garage])
REFERENCES [dbo].[garages] ([num_garage])
GO
