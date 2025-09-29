CREATE TABLE [dbo].[flyway_schema_history](
	[installed_rank] [int] NOT NULL,
	[version] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[type] [nvarchar](20) NOT NULL,
	[script] [nvarchar](1000) NOT NULL,
	[checksum] [int] NULL,
	[installed_by] [nvarchar](100) NOT NULL,
	[installed_on] [datetime] NOT NULL,
	[execution_time] [int] NOT NULL,
	[success] [bit] NOT NULL,
 CONSTRAINT [flyway_schema_history_pk] PRIMARY KEY CLUSTERED 
(
	[installed_rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[flyway_schema_history] ADD  DEFAULT (getdate()) FOR [installed_on]
GO
