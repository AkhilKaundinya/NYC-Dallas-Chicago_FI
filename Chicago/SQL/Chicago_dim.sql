/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Chicago_dim.DM1
 *
 * Date Created : Sunday, February 26, 2023 18:26:45
 * Target DBMS : Microsoft Azure SQL DB
 */

CREATE DATABASE chicago
go
/* 
 * TABLE: Dim_Address 
 */

CREATE TABLE Dim_Address(
    AddressSK               int              NOT NULL,
    Address                 nvarchar(254)    NULL,
    City                    nvarchar(254)    NULL,
    State                   nvarchar(254)    NULL,
    Zip                     nvarchar(254)    NULL,
    Ward                    char(3)          NULL,
    Precinct                char(6)          NULL,
    [Police District]       char(3)          NULL,
    SSA                     char(3)          NULL,
    Latitude                float            NULL,
    Longitude               float            NULL,
    Location                nvarchar(254)    NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkflowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_Restaurant_SK_1 PRIMARY KEY NONCLUSTERED (AddressSK)
)

go


IF OBJECT_ID('Dim_Address') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Address >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Address >>>'
go

/* 
 * TABLE: Dim_Application 
 */

CREATE TABLE Dim_Application(
    ApplicationSK           int              NOT NULL,
    ApplicationType         varchar(255)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkFlowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_INSPECTION_SK_3_1 PRIMARY KEY NONCLUSTERED (ApplicationSK)
)

go


IF OBJECT_ID('Dim_Application') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Application >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Application >>>'
go

/* 
 * TABLE: Dim_Business_Activity 
 */

CREATE TABLE Dim_Business_Activity(
    BusinessActivitySK      int              NOT NULL,
    BusinessActivityID      varchar(255)     NULL,
    BusinessActivity        varchar(254)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkFlowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_INSPECTION_SK_3_1_1 PRIMARY KEY NONCLUSTERED (BusinessActivitySK)
)

go


IF OBJECT_ID('Dim_Business_Activity') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Business_Activity >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Business_Activity >>>'
go

/* 
 * TABLE: Dim_Date 
 */

CREATE TABLE Dim_Date(
    DateSK                  int              NOT NULL,
    FullDateAK              date             NOT NULL,
    DayNumberOfWeek         int              NOT NULL,
    DayNameOfWeek           nvarchar(10)     NOT NULL,
    DayNumberOfMonth        int              NOT NULL,
    DayNumberOfYear         int              NOT NULL,
    WeekNumberOfYear        int              NOT NULL,
    MonthName               nvarchar(10)     NOT NULL,
    MonthNumberOfYear       int              NOT NULL,
    CalendarQuarter         int              NOT NULL,
    CalendarYear            smallint         NOT NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkflowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK__Dim_Date__A4262D750061DAF4 PRIMARY KEY NONCLUSTERED (DateSK)
)

go


IF OBJECT_ID('Dim_Date') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Date >>>'
go

/* 
 * TABLE: Dim_Facility 
 */

CREATE TABLE Dim_Facility(
    FacilitySK              int              NOT NULL,
    LicenceNumber           int              NOT NULL,
    [AKA Name]              nvarchar(254)    NULL,
    [DBA Name]              nvarchar(254)    NULL,
    LegalName               varchar(254)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkflowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_Restaurant_SK PRIMARY KEY NONCLUSTERED (FacilitySK, LicenceNumber)
)

go


IF OBJECT_ID('Dim_Facility') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Facility >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Facility >>>'
go

/* 
 * TABLE: Dim_Facility_Type 
 */

CREATE TABLE Dim_Facility_Type(
    FacilityTypeSK          int              NOT NULL,
    [Inspection Type]       varchar(255)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkFlowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_INSPECTION_SK_1 PRIMARY KEY NONCLUSTERED (FacilityTypeSK)
)

go


IF OBJECT_ID('Dim_Facility_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Facility_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Facility_Type >>>'
go

/* 
 * TABLE: Dim_Inspection_Type 
 */

CREATE TABLE Dim_Inspection_Type(
    InspectionSK            int              NOT NULL,
    [Inspection Type]       varchar(255)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkFlowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_INSPECTION_SK PRIMARY KEY NONCLUSTERED (InspectionSK)
)

go


IF OBJECT_ID('Dim_Inspection_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Inspection_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Inspection_Type >>>'
go

/* 
 * TABLE: Dim_Licences 
 */

CREATE TABLE Dim_Licences(
    LicenceSK               int              NOT NULL,
    LicenseCode             varchar(6)       NULL,
    LicenseDescription      varchar(255)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkflowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_VIOLATION_SK_1 PRIMARY KEY NONCLUSTERED (LicenceSK)
)

go


IF OBJECT_ID('Dim_Licences') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Licences >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Licences >>>'
go

/* 
 * TABLE: Dim_Licesnse_Status 
 */

CREATE TABLE Dim_Licesnse_Status(
    LicenseStatusSK         int              NOT NULL,
    LicenseStatus           varchar(255)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkFlowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_INSPECTION_SK_3 PRIMARY KEY NONCLUSTERED (LicenseStatusSK)
)

go


IF OBJECT_ID('Dim_Licesnse_Status') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Licesnse_Status >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Licesnse_Status >>>'
go

/* 
 * TABLE: Dim_Owner_Account 
 */

CREATE TABLE Dim_Owner_Account(
    AccountSK               int              NOT NULL,
    AccountNumber           varchar(255)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkFlowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_INSPECTION_SK_3_1_2 PRIMARY KEY NONCLUSTERED (AccountSK)
)

go


IF OBJECT_ID('Dim_Owner_Account') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Owner_Account >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Owner_Account >>>'
go

/* 
 * TABLE: Dim_Result 
 */

CREATE TABLE Dim_Result(
    ResultSK                int              NOT NULL,
    Result                  varchar(255)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkFlowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_INSPECTION_SK_2 PRIMARY KEY NONCLUSTERED (ResultSK)
)

go


IF OBJECT_ID('Dim_Result') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Result >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Result >>>'
go

/* 
 * TABLE: Dim_Violation 
 */

CREATE TABLE Dim_Violation(
    ViolationSK              int              NOT NULL,
    [VIOLATION DESCRIPTION]  varchar(255)     NULL,
    [VIOLATION DETAIL]       varchar(255)     NULL,
    Comment                  varchar(255)     NULL,
    DI_CreateDate            datetime         NULL,
    DI_WorkflowFileName      nvarchar(254)    NULL,
    DI_WorkflowDirectory     nvarchar(254)    NULL,
    CONSTRAINT PK_VIOLATION_SK PRIMARY KEY NONCLUSTERED (ViolationSK)
)

go


IF OBJECT_ID('Dim_Violation') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Violation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Violation >>>'
go

/* 
 * TABLE: Fact_Inspection_Violation_SK 
 */

CREATE TABLE Fact_Inspection_Violation_SK(
    InspectionViolationSK    char(10)         NOT NULL,
    Risk                     varchar(254)     NULL,
    [Inspection Date]        date             NULL,
    FacilitySK               int              NOT NULL,
    AddressSK                int              NOT NULL,
    ViolationSK              int              NOT NULL,
    InspectionSK             int              NOT NULL,
    InspectionDateSK         int              NOT NULL,
    ResultSK                 int              NOT NULL,
    FacilityTypeSK           int              NOT NULL,
    DI_CreateDate            datetime         NULL,
    DI_WorkflowFileName      nvarchar(254)    NULL,
    DI_WorkflowDirectory     nvarchar(254)    NULL,
    LicenceNumber            int              NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (InspectionViolationSK)
)

go


IF OBJECT_ID('Fact_Inspection_Violation_SK') IS NOT NULL
    PRINT '<<< CREATED TABLE Fact_Inspection_Violation_SK >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Fact_Inspection_Violation_SK >>>'
go

/* 
 * TABLE: FCT_Business_Licenses 
 */

CREATE TABLE FCT_Business_Licenses(
    BusinessLicensesSK                    int        NOT NULL,
    LicenseID                             int        NULL,
    ApplicationCreatedDat                 date       NULL,
    ApplicationRequirmentComplete         date       NULL,
    PaymentDate                           date       NULL,
    LicenseTermStartDate                  date       NULL,
    LicenseTermExpirationDate             date       NULL,
    LicenseApprovedForInsuaranceDate      date       NULL,
    LicenceStatusChangeDate               date       NULL,
    DateIssued                            date       NULL,
    ConditionalApproval                   char(1)    NULL,
    FacilitySK                            int        NOT NULL,
    LicenseStatusSK                       int        NOT NULL,
    ApplicationSK                         int        NOT NULL,
    BusinessActivitySK                    int        NOT NULL,
    LicenceSK                             int        NOT NULL,
    AccountSK                             int        NOT NULL,
    ApplicationRequirmentCompleteSK       int        NOT NULL,
    ApplicationCreatedDateSK              int        NOT NULL,
    LicenceNumber                         int        NOT NULL,
    DateIssuedSK                          int        NOT NULL,
    LicenceStatusChangeDateSK             int        NOT NULL,
    LicenseApprovedForInsuaranceDateSK    int        NOT NULL,
    LicenseTermExpirationDateSK           int        NOT NULL,
    LicenseTermStartDateSK                int        NOT NULL,
    PaymentDateSK                         int        NOT NULL,
    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (BusinessLicensesSK)
)

go


IF OBJECT_ID('FCT_Business_Licenses') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Business_Licenses >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Business_Licenses >>>'
go

/* 
 * TABLE: Fact_Inspection_Violation_SK 
 */

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Facility1 
    FOREIGN KEY (FacilitySK, LicenceNumber)
    REFERENCES Dim_Facility(FacilitySK, LicenceNumber)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Address2 
    FOREIGN KEY (AddressSK)
    REFERENCES Dim_Address(AddressSK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Violation3 
    FOREIGN KEY (ViolationSK)
    REFERENCES Dim_Violation(ViolationSK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Inspection_Type4 
    FOREIGN KEY (InspectionSK)
    REFERENCES Dim_Inspection_Type(InspectionSK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Date5 
    FOREIGN KEY (InspectionDateSK)
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Facility_Type7 
    FOREIGN KEY (FacilityTypeSK)
    REFERENCES Dim_Facility_Type(FacilityTypeSK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Result9 
    FOREIGN KEY (ResultSK)
    REFERENCES Dim_Result(ResultSK)
go


/* 
 * TABLE: FCT_Business_Licenses 
 */

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Facility10 
    FOREIGN KEY (FacilitySK, LicenceNumber)
    REFERENCES Dim_Facility(FacilitySK, LicenceNumber)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Licesnse_Status12 
    FOREIGN KEY (LicenseStatusSK)
    REFERENCES Dim_Licesnse_Status(LicenseStatusSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Application14 
    FOREIGN KEY (ApplicationSK)
    REFERENCES Dim_Application(ApplicationSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Business_Activity15 
    FOREIGN KEY (BusinessActivitySK)
    REFERENCES Dim_Business_Activity(BusinessActivitySK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Licences16 
    FOREIGN KEY (LicenceSK)
    REFERENCES Dim_Licences(LicenceSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Owner_Account17 
    FOREIGN KEY (AccountSK)
    REFERENCES Dim_Owner_Account(AccountSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Date19 
    FOREIGN KEY (ApplicationRequirmentCompleteSK)
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Date20 
    FOREIGN KEY (ApplicationCreatedDateSK)
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Date22 
    FOREIGN KEY (DateIssuedSK)
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Date23 
    FOREIGN KEY (PaymentDateSK)
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Date24 
    FOREIGN KEY (LicenseTermStartDateSK)
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Date25 
    FOREIGN KEY (LicenseTermExpirationDateSK)
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Date27 
    FOREIGN KEY (LicenseApprovedForInsuaranceDateSK)
    REFERENCES Dim_Date(DateSK)
go

ALTER TABLE FCT_Business_Licenses ADD CONSTRAINT RefDim_Date28 
    FOREIGN KEY (LicenceStatusChangeDateSK)
    REFERENCES Dim_Date(DateSK)
go


