USE [Provincias_rd]
GO

/****** Object:  Table [dbo].[provincias_OMS]    Script Date: 3/22/2020 5:53:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE SCHEMA OMS
GO

CREATE TABLE OMS.[provincias](
	[provincia_id] [char](2) NOT NULL,
	[nombre] [varchar](45) NULL,
	[logintud] [decimal](12, 8) NULL,
	[latitud] [decimal](12, 8) NULL,
 CONSTRAINT [Provincia_PK_OMS] PRIMARY KEY CLUSTERED 
(
	[provincia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE OMS.[provincias] ADD  DEFAULT (NULL) FOR [nombre]
GO


CREATE TABLE OMS.boletin_Hist
(
Id  int identity(1,1) primary key,
Codigo_Provincia	 char(02),
Importado	         int,
Investigacion	     int,
Local	             int,
Defunciones	         int,
Archivo              varchar(30)
)
go

CREATE TABLE OMS.boletin
(
Id  int identity(1,1) primary key,
Codigo_Provincia	 char(02),
Importado	         int,
Investigacion	     int,
Local	             int,
Defunciones	         int,
Archivo              varchar(30)
)

