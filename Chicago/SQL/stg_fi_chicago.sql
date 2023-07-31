
CREATE TABLE [dbo].[Staging_Chicago](
	[Inspection ID] [int] NULL,
	[DBA Name] [varchar](79) NULL,
	[AKA Name] [varchar](79) NULL,
	[License #] [char](7) NULL,
	[Facility Type] [varchar](47) NULL,
	[Risk] [char](15) NULL,
	[Address] [varchar](51) NULL,
	[City] [varchar](20) NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
	[Inspection Date] [char](10) NULL,
	[Inspection Type] [varchar](41) NULL,
	[Results] [varchar](20) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Location] [char](40) NULL,
	[Inspection_Date] [date] NULL,
	[Violation_No] [char](2) NULL,
	[Description] [char](200) NULL,
	[Comments] [char](5500) NULL
)
