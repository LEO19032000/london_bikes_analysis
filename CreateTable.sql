
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[London_bikes_final](
	[Id] [int] NOT NULL,
	[timestamp] DATETIME NULL,
	[counts] [int] NULL,
	[temp_real_C] NUMERIC(18,2) NULL,
	[temp_feels_like_C] NUMERIC(18,2) NULL,
	[humidity_percent] NUMERIC(18,4) NULL,
	[wind_speed_kph] NUMERIC(18,2) NULL,
	[weather]  VARCHAR(192) NULL,
	[is_holiday] [int] NULL,
	[is_weekend] [int] NULL,
	[season] VARCHAR(192) NULL,
 CONSTRAINT [PK_London_bikes_final] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[London_bikes_final] ADD  CONSTRAINT [DF_London_bikes_final_Id]  DEFAULT (NEXT VALUE FOR [dbo].[CAT_Seq]) FOR [Id]
GO



