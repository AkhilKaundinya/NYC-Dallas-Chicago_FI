/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      NYC_dim.DM1
 *
 * Date Created : Saturday, February 11, 2023 21:43:41
 * Target DBMS : Microsoft Azure SQL DB
 */

/* 
 * TABLE: DimDate 
 */

CREATE TABLE NYC.DimDate(
    Date_sk          int            NOT NULL,
    DateOfMonth      int            NULL,
    FullDate_AK      int            NULL,
    DateMonth        int            NULL,
    DateDay          varchar(10)    NULL,
    DateYear         int            NULL,
    DI_CreateDate    date           NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (Date_sk)
)

go


IF OBJECT_ID('DimDate') IS NOT NULL
    PRINT '<<< CREATED TABLE DimDate >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimDate >>>'
go

/* 
 * TABLE: DimInspection 
 */

CREATE TABLE NYC.DimInspection(
    Inspection_sk       int             NOT NULL,
    InspectionType      varchar(254)    NULL,
    InspectionAction    varchar(254)    NULL,
    DI_CreateDate       date            NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (Inspection_sk)
)

go


IF OBJECT_ID('DimInspection') IS NOT NULL
    PRINT '<<< CREATED TABLE DimInspection >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimInspection >>>'
go

/* 
 * TABLE: DimLocation 
 */

CREATE TABLE NYC.DimLocation(
    Address_sk           int             NOT NULL,
    BuildingNumber       varchar(254)    NULL,
    Street               varchar(254)    NULL,
    ZipCode              varchar(254)    NULL,
    Phone                varchar(50)     NULL,
    Latitude             int             NULL,
    Longitide            int             NULL,
    Resturant_sk         int             NOT NULL,
    ResturantLocation    varchar(254)    NULL,
    DI_CreateDate        date            NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (Address_sk)
)

go


IF OBJECT_ID('DimLocation') IS NOT NULL
    PRINT '<<< CREATED TABLE DimLocation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimLocation >>>'
go

/* 
 * TABLE: DimResturant 
 */

CREATE TABLE NYC.DimResturant(
    Resturant_sk     int             NOT NULL,
    ResturantID      int             NULL,
    ResturantName    varchar(254)    NULL,
    CusineDesc       varchar(254)    NULL,
    DI_CreateDate    date            NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (Resturant_sk)
)

go


IF OBJECT_ID('DimResturant') IS NOT NULL
    PRINT '<<< CREATED TABLE DimResturant >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimResturant >>>'
go

/* 
 * TABLE: DimViolation 
 */

CREATE TABLE NYC.DimViolation(
    Violation_sk     int              NOT NULL,
    ViolationCode    varchar(254)     NULL,
    VioaltionDesc    varchar(1000)    NULL,
    CriticalFlag     varchar(254)     NULL,
    DI_CreateDate    date             NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (Violation_sk)
)

go


IF OBJECT_ID('DimViolation') IS NOT NULL
    PRINT '<<< CREATED TABLE DimViolation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimViolation >>>'
go

/* 
 * TABLE: Facts_NYC 
 */

CREATE TABLE NYC.Facts_NYC(
    NYCFact_sk           int            NOT NULL,
    Violation_sk         int            NOT NULL,
    Inspection_sk        int            NOT NULL,
    Resturant_sk         int            NOT NULL,
    Date_sk              int            NOT NULL,
    Score                int            NULL,
    Grade                varchar(10)    NULL,
    GradeDate            date           NULL,
    GradeDate_sk         int            NOT NULL,
    InspectionDate_sk    int            NOT NULL,
    InspectionDate       date           NULL,
    DI_CreateDate        date           NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (NYCFact_sk)
)

go


IF OBJECT_ID('Facts_NYC') IS NOT NULL
    PRINT '<<< CREATED TABLE Facts_NYC >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Facts_NYC >>>'
go

/* 
 * TABLE: DimLocation 
 */

ALTER TABLE DimLocation ADD CONSTRAINT RefDimResturant7 
    FOREIGN KEY (Resturant_sk)
    REFERENCES DimResturant(Resturant_sk)
go


/* 
 * TABLE: Facts_NYC 
 */

ALTER TABLE Facts_NYC ADD CONSTRAINT RefDimViolation1 
    FOREIGN KEY (Violation_sk)
    REFERENCES DimViolation(Violation_sk)
go

ALTER TABLE Facts_NYC ADD CONSTRAINT RefDimInspection2 
    FOREIGN KEY (Inspection_sk)
    REFERENCES DimInspection(Inspection_sk)
go

ALTER TABLE Facts_NYC ADD CONSTRAINT RefDimResturant3 
    FOREIGN KEY (Resturant_sk)
    REFERENCES DimResturant(Resturant_sk)
go

ALTER TABLE Facts_NYC ADD CONSTRAINT RefDimDate4 
    FOREIGN KEY (Date_sk)
    REFERENCES DimDate(Date_sk)
go

ALTER TABLE Facts_NYC ADD CONSTRAINT RefDimDate5 
    FOREIGN KEY (GradeDate_sk)
    REFERENCES DimDate(Date_sk)
go

ALTER TABLE Facts_NYC ADD CONSTRAINT RefDimDate6 
    FOREIGN KEY (InspectionDate_sk)
    REFERENCES DimDate(Date_sk)
go


