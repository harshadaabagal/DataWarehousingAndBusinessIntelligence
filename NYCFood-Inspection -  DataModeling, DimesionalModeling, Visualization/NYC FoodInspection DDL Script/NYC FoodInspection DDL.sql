/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      NYC_DimensinalModel.DM1
 *
 * Date Created : Sunday, July 16, 2023 00:38:47
 * Target DBMS : Microsoft SQL Server 2019
 */

USE NYC
go
/* 
 * TABLE: DIM_NYC_Addresses 
 */

CREATE TABLE DIM_NYC_Addresses(
    AddressSK               int              NOT NULL,
    BUILDING                nvarchar(10)     NULL,
    BBL                     bigint           NULL,
    DI_WorkflowDirectory    nvarchar(256)    NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NOT NULL,
    DI_CreateDate           datetime         NOT NULL,
    Council_District        char(2)          NULL,
    Community_Board         smallint         NULL,
    Census_Tract            char(6)          NULL,
    Longitude               float            NULL,
    Latitude                float            NULL,
    NTA                     char(4)          NULL,
    BORO                    varchar(13)      NULL,
    ZIPCODE                 char(5)          NULL,
    STREET                  varchar(40)      NULL,
    BIN                     int              NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (AddressSK)
)

go


IF OBJECT_ID('DIM_NYC_Addresses') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_Addresses >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_Addresses >>>'
go

/* 
 * TABLE: DIM_NYC_Borough 
 */

CREATE TABLE DIM_NYC_Borough(
    BoroSK                  int              NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NOT NULL,
    DI_WorkflowDirectory    nvarchar(256)    NOT NULL,
    DI_CreateDate           datetime         NOT NULL,
    BORO                    varchar(13)      NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (BoroSK)
)

go


IF OBJECT_ID('DIM_NYC_Borough') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_Borough >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_Borough >>>'
go

/* 
 * TABLE: DIM_NYC_CriticalFlag 
 */

CREATE TABLE DIM_NYC_CriticalFlag(
    CRITICAL_FLAG_SK        int              NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NOT NULL,
    DI_WorkflowDirectory    nvarchar(256)    NOT NULL,
    DI_CreateDate           datetime         NOT NULL,
    CRITICAL_FLAG           char(14)         NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (CRITICAL_FLAG_SK)
)

go


IF OBJECT_ID('DIM_NYC_CriticalFlag') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_CriticalFlag >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_CriticalFlag >>>'
go

/* 
 * TABLE: DIM_NYC_Cuisine 
 */

CREATE TABLE DIM_NYC_Cuisine(
    CUISINE_DESCRIPTION_SK    int              NOT NULL,
    DI_WorkflowFileName       nvarchar(256)    NOT NULL,
    DI_WorkflowDirectory      nvarchar(256)    NOT NULL,
    DI_CreateDate             datetime         NOT NULL,
    CUISINE_DESCRIPTION       varchar(30)      NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (CUISINE_DESCRIPTION_SK)
)

go


IF OBJECT_ID('DIM_NYC_Cuisine') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_Cuisine >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_Cuisine >>>'
go

/* 
 * TABLE: DIM_NYC_Food_Places 
 */

CREATE TABLE DIM_NYC_Food_Places(
    FoodPlacesSK            int              NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NOT NULL,
    DI_WorkflowDirectory    nvarchar(256)    NOT NULL,
    DBA                     nvarchar(256)    NULL,
    CAMIS                   nvarchar(256)    NULL,
    DI_CreateDate           datetime         NOT NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (FoodPlacesSK)
)

go


IF OBJECT_ID('DIM_NYC_Food_Places') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_Food_Places >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_Food_Places >>>'
go

/* 
 * TABLE: DIM_NYC_Inspection_Actions 
 */

CREATE TABLE DIM_NYC_Inspection_Actions(
    ActionSK                int              NOT NULL,
    DI_WorkflowDirectory    nvarchar(256)    NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NOT NULL,
    DI_CreateDate           datetime         NOT NULL,
    ACTION                  varchar(130)     NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (ActionSK)
)

go


IF OBJECT_ID('DIM_NYC_Inspection_Actions') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_Inspection_Actions >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_Inspection_Actions >>>'
go

/* 
 * TABLE: DIM_NYC_Inspection_Grades 
 */

CREATE TABLE DIM_NYC_Inspection_Grades(
    GradeSK                 int              NOT NULL,
    DI_WorkflowDirectory    nvarchar(256)    NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NOT NULL,
    DI_CreateDate           datetime         NOT NULL,
    GRADE                   char(1)          NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (GradeSK)
)

go


IF OBJECT_ID('DIM_NYC_Inspection_Grades') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_Inspection_Grades >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_Inspection_Grades >>>'
go

/* 
 * TABLE: DIM_NYC_Inspection_Type 
 */

CREATE TABLE DIM_NYC_Inspection_Type(
    InspectionTypeSK        int              NOT NULL,
    DI_CreateDate           datetime         NOT NULL,
    DI_WorkflowFileName     nvarchar(256)    NOT NULL,
    DI_WorkflowDirectory    nvarchar(256)    NOT NULL,
    INSPECTION_TYPE         varchar(60)      NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (InspectionTypeSK)
)

go


IF OBJECT_ID('DIM_NYC_Inspection_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_Inspection_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_Inspection_Type >>>'
go

/* 
 * TABLE: DIM_NYC_Violations_Code 
 */

CREATE TABLE DIM_NYC_Violations_Code(
    ViolationCodeSK          int              NOT NULL,
    DI_WorkflowFileName      nvarchar(256)    NOT NULL,
    DI_WorkflowDirectory     nvarchar(254)    NOT NULL,
    DI_CreateDate            datetime         NOT NULL,
    VIOLATION_DESCRIPTION    nvarchar(254)    NULL,
    VIOLATION_CODE           char(5)          NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (ViolationCodeSK)
)

go


IF OBJECT_ID('DIM_NYC_Violations_Code') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_NYC_Violations_Code >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_NYC_Violations_Code >>>'
go

/* 
 * TABLE: FACT_NewYork_Food_Inspection 
 */

CREATE TABLE FACT_NewYork_Food_Inspection(
    Inspection_SK             int              NOT NULL,
    Inspection_Date           date             NULL,
    Inspection_Date_SK        int              NULL,
    FoodPlacesSK              int              NULL,
    BoroSK                    int              NULL,
    AddressSK                 int              NULL,
    DI_CreateDate             datetime         NOT NULL,
    PHONE                     char(14)         NULL,
    CUISINE_DESCRIPTION_SK    int              NULL,
    DI_WorkflowDirectory      nvarchar(256)    NOT NULL,
    DI_WorkflowFileName       nvarchar(256)    NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (Inspection_SK)
)

go


IF OBJECT_ID('FACT_NewYork_Food_Inspection') IS NOT NULL
    PRINT '<<< CREATED TABLE FACT_NewYork_Food_Inspection >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FACT_NewYork_Food_Inspection >>>'
go

/* 
 * TABLE: FACT_NewYork_FoodInspection_Violations 
 */

CREATE TABLE FACT_NewYork_FoodInspection_Violations(
    InspectionViolationSK    int              NOT NULL,
    DI_WorkflowFileName      nvarchar(256)    NOT NULL,
    DI_WorkflowDirectory     nvarchar(256)    NOT NULL,
    DI_CreateDate            datetime         NOT NULL,
    Record_Date              date             NOT NULL,
    ViolationCodeSK          int              NULL,
    GradeSK                  int              NULL,
    Grade_Date               date             NULL,
    SCORE                    smallint         NULL,
    CRITICAL_FLAG_SK         int              NULL,
    ActionSK                 int              NULL,
    InspectionTypeSK         int              NULL,
    InspectionSK             int              NULL,
    Inspection_SK            int              NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (InspectionViolationSK)
)

go


IF OBJECT_ID('FACT_NewYork_FoodInspection_Violations') IS NOT NULL
    PRINT '<<< CREATED TABLE FACT_NewYork_FoodInspection_Violations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FACT_NewYork_FoodInspection_Violations >>>'
go

/* 
 * TABLE: FACT_NewYork_Food_Inspection 
 */

ALTER TABLE FACT_NewYork_Food_Inspection ADD CONSTRAINT RefDIM_NYC_Borough10 
    FOREIGN KEY (BoroSK)
    REFERENCES DIM_NYC_Borough(BoroSK)
go

ALTER TABLE FACT_NewYork_Food_Inspection ADD CONSTRAINT RefDIM_NYC_Addresses11 
    FOREIGN KEY (AddressSK)
    REFERENCES DIM_NYC_Addresses(AddressSK)
go

ALTER TABLE FACT_NewYork_Food_Inspection ADD CONSTRAINT RefDIM_NYC_Cuisine19 
    FOREIGN KEY (CUISINE_DESCRIPTION_SK)
    REFERENCES DIM_NYC_Cuisine(CUISINE_DESCRIPTION_SK)
go

ALTER TABLE FACT_NewYork_Food_Inspection ADD CONSTRAINT RefDIM_NYC_Food_Places20 
    FOREIGN KEY (FoodPlacesSK)
    REFERENCES DIM_NYC_Food_Places(FoodPlacesSK)
go


/* 
 * TABLE: FACT_NewYork_FoodInspection_Violations 
 */

ALTER TABLE FACT_NewYork_FoodInspection_Violations ADD CONSTRAINT RefDIM_NYC_CriticalFlag12 
    FOREIGN KEY (CRITICAL_FLAG_SK)
    REFERENCES DIM_NYC_CriticalFlag(CRITICAL_FLAG_SK)
go

ALTER TABLE FACT_NewYork_FoodInspection_Violations ADD CONSTRAINT RefDIM_NYC_Inspection_Grades13 
    FOREIGN KEY (GradeSK)
    REFERENCES DIM_NYC_Inspection_Grades(GradeSK)
go

ALTER TABLE FACT_NewYork_FoodInspection_Violations ADD CONSTRAINT RefDIM_NYC_Inspection_Type14 
    FOREIGN KEY (InspectionTypeSK)
    REFERENCES DIM_NYC_Inspection_Type(InspectionTypeSK)
go

ALTER TABLE FACT_NewYork_FoodInspection_Violations ADD CONSTRAINT RefDIM_NYC_Inspection_Actions15 
    FOREIGN KEY (ActionSK)
    REFERENCES DIM_NYC_Inspection_Actions(ActionSK)
go

ALTER TABLE FACT_NewYork_FoodInspection_Violations ADD CONSTRAINT RefDIM_NYC_Violations_Code16 
    FOREIGN KEY (ViolationCodeSK)
    REFERENCES DIM_NYC_Violations_Code(ViolationCodeSK)
go

ALTER TABLE FACT_NewYork_FoodInspection_Violations ADD CONSTRAINT RefFACT_NewYork_Food_Inspection18 
    FOREIGN KEY (Inspection_SK)
    REFERENCES FACT_NewYork_Food_Inspection(Inspection_SK)
go


/* 
 * PROCEDURE: DIM_NYC_AddressesInsProc 
 */

CREATE PROCEDURE DIM_NYC_AddressesInsProc
(
    @AddressSK                int,
    @BUILDING                 nvarchar(10)             = NULL,
    @BBL                      bigint                   = NULL,
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_WorkflowFileName      nvarchar(256),
    @DI_CreateDate            datetime,
    @Council_District         char(2)                  = NULL,
    @Community_Board          smallint                 = NULL,
    @Census_Tract             char(6)                  = NULL,
    @Longitude                float                    = NULL,
    @Latitude                 float                    = NULL,
    @NTA                      char(4)                  = NULL,
    @BORO                     varchar(13)              = NULL,
    @ZIPCODE                  char(5)                  = NULL,
    @STREET                   varchar(40)              = NULL,
    @BIN                      int                      = NULL)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_Addresses(AddressSK,
                                  BUILDING,
                                  BBL,
                                  DI_WorkflowDirectory,
                                  DI_WorkflowFileName,
                                  DI_CreateDate,
                                  Council_District,
                                  Community_Board,
                                  Census_Tract,
                                  Longitude,
                                  Latitude,
                                  NTA,
                                  BORO,
                                  ZIPCODE,
                                  STREET,
                                  BIN)
    VALUES(@AddressSK,
           @BUILDING,
           @BBL,
           @DI_WorkflowDirectory,
           @DI_WorkflowFileName,
           @DI_CreateDate,
           @Council_District,
           @Community_Board,
           @Census_Tract,
           @Longitude,
           @Latitude,
           @NTA,
           @BORO,
           @ZIPCODE,
           @STREET,
           @BIN)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_AddressesInsProc: Cannot insert because primary key value not found in DIM_NYC_Addresses ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_AddressesInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_AddressesInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_AddressesInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_AddressesUpdProc 
 */

CREATE PROCEDURE DIM_NYC_AddressesUpdProc
(
    @AddressSK                int,
    @BUILDING                 nvarchar(10)             = NULL,
    @BBL                      bigint                   = NULL,
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_WorkflowFileName      nvarchar(256),
    @DI_CreateDate            datetime,
    @Council_District         char(2)                  = NULL,
    @Community_Board          smallint                 = NULL,
    @Census_Tract             char(6)                  = NULL,
    @Longitude                float                    = NULL,
    @Latitude                 float                    = NULL,
    @NTA                      char(4)                  = NULL,
    @BORO                     varchar(13)              = NULL,
    @ZIPCODE                  char(5)                  = NULL,
    @STREET                   varchar(40)              = NULL,
    @BIN                      int                      = NULL)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_Addresses
       SET BUILDING                  = @BUILDING,
           BBL                       = @BBL,
           DI_WorkflowDirectory      = @DI_WorkflowDirectory,
           DI_WorkflowFileName       = @DI_WorkflowFileName,
           DI_CreateDate             = @DI_CreateDate,
           Council_District          = @Council_District,
           Community_Board           = @Community_Board,
           Census_Tract              = @Census_Tract,
           Longitude                 = @Longitude,
           Latitude                  = @Latitude,
           NTA                       = @NTA,
           BORO                      = @BORO,
           ZIPCODE                   = @ZIPCODE,
           STREET                    = @STREET,
           BIN                       = @BIN
     WHERE AddressSK = @AddressSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_AddressesUpdProc: Cannot update  in DIM_NYC_Addresses ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_AddressesUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_AddressesUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_AddressesUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_AddressesDelProc 
 */

CREATE PROCEDURE DIM_NYC_AddressesDelProc
(
    @AddressSK                int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_Addresses
     WHERE AddressSK = @AddressSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_AddressesDelProc: Cannot delete because foreign keys still exist in DIM_NYC_Addresses ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_AddressesDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_AddressesDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_AddressesDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_AddressesSelProc 
 */

CREATE PROCEDURE DIM_NYC_AddressesSelProc
(
    @AddressSK                int)
AS
BEGIN
    SELECT AddressSK,
           BUILDING,
           BBL,
           DI_WorkflowDirectory,
           DI_WorkflowFileName,
           DI_CreateDate,
           Council_District,
           Community_Board,
           Census_Tract,
           Longitude,
           Latitude,
           NTA,
           BORO,
           ZIPCODE,
           STREET,
           BIN
      FROM DIM_NYC_Addresses
     WHERE AddressSK = @AddressSK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_AddressesSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_AddressesSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_AddressesSelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_BoroughInsProc 
 */

CREATE PROCEDURE DIM_NYC_BoroughInsProc
(
    @BoroSK                   int,
    @DI_WorkflowFileName      nvarchar(256),
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_CreateDate            datetime,
    @BORO                     varchar(13)              = NULL)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_Borough(BoroSK,
                                DI_WorkflowFileName,
                                DI_WorkflowDirectory,
                                DI_CreateDate,
                                BORO)
    VALUES(@BoroSK,
           @DI_WorkflowFileName,
           @DI_WorkflowDirectory,
           @DI_CreateDate,
           @BORO)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_BoroughInsProc: Cannot insert because primary key value not found in DIM_NYC_Borough ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_BoroughInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_BoroughInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_BoroughInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_BoroughUpdProc 
 */

CREATE PROCEDURE DIM_NYC_BoroughUpdProc
(
    @BoroSK                   int,
    @DI_WorkflowFileName      nvarchar(256),
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_CreateDate            datetime,
    @BORO                     varchar(13)              = NULL)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_Borough
       SET DI_WorkflowFileName       = @DI_WorkflowFileName,
           DI_WorkflowDirectory      = @DI_WorkflowDirectory,
           DI_CreateDate             = @DI_CreateDate,
           BORO                      = @BORO
     WHERE BoroSK = @BoroSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_BoroughUpdProc: Cannot update  in DIM_NYC_Borough ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_BoroughUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_BoroughUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_BoroughUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_BoroughDelProc 
 */

CREATE PROCEDURE DIM_NYC_BoroughDelProc
(
    @BoroSK                   int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_Borough
     WHERE BoroSK = @BoroSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_BoroughDelProc: Cannot delete because foreign keys still exist in DIM_NYC_Borough ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_BoroughDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_BoroughDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_BoroughDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_BoroughSelProc 
 */

CREATE PROCEDURE DIM_NYC_BoroughSelProc
(
    @BoroSK                   int)
AS
BEGIN
    SELECT BoroSK,
           DI_WorkflowFileName,
           DI_WorkflowDirectory,
           DI_CreateDate,
           BORO
      FROM DIM_NYC_Borough
     WHERE BoroSK = @BoroSK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_BoroughSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_BoroughSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_BoroughSelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_CriticalFlagInsProc 
 */

CREATE PROCEDURE DIM_NYC_CriticalFlagInsProc
(
    @CRITICAL_FLAG_SK         int,
    @DI_WorkflowFileName      nvarchar(256),
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_CreateDate            datetime,
    @CRITICAL_FLAG            char(14)                 = NULL)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_CriticalFlag(CRITICAL_FLAG_SK,
                                     DI_WorkflowFileName,
                                     DI_WorkflowDirectory,
                                     DI_CreateDate,
                                     CRITICAL_FLAG)
    VALUES(@CRITICAL_FLAG_SK,
           @DI_WorkflowFileName,
           @DI_WorkflowDirectory,
           @DI_CreateDate,
           @CRITICAL_FLAG)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_CriticalFlagInsProc: Cannot insert because primary key value not found in DIM_NYC_CriticalFlag ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_CriticalFlagInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_CriticalFlagInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_CriticalFlagInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_CriticalFlagUpdProc 
 */

CREATE PROCEDURE DIM_NYC_CriticalFlagUpdProc
(
    @CRITICAL_FLAG_SK         int,
    @DI_WorkflowFileName      nvarchar(256),
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_CreateDate            datetime,
    @CRITICAL_FLAG            char(14)                 = NULL)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_CriticalFlag
       SET DI_WorkflowFileName       = @DI_WorkflowFileName,
           DI_WorkflowDirectory      = @DI_WorkflowDirectory,
           DI_CreateDate             = @DI_CreateDate,
           CRITICAL_FLAG             = @CRITICAL_FLAG
     WHERE CRITICAL_FLAG_SK = @CRITICAL_FLAG_SK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_CriticalFlagUpdProc: Cannot update  in DIM_NYC_CriticalFlag ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_CriticalFlagUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_CriticalFlagUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_CriticalFlagUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_CriticalFlagDelProc 
 */

CREATE PROCEDURE DIM_NYC_CriticalFlagDelProc
(
    @CRITICAL_FLAG_SK         int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_CriticalFlag
     WHERE CRITICAL_FLAG_SK = @CRITICAL_FLAG_SK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_CriticalFlagDelProc: Cannot delete because foreign keys still exist in DIM_NYC_CriticalFlag ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_CriticalFlagDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_CriticalFlagDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_CriticalFlagDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_CriticalFlagSelProc 
 */

CREATE PROCEDURE DIM_NYC_CriticalFlagSelProc
(
    @CRITICAL_FLAG_SK         int)
AS
BEGIN
    SELECT CRITICAL_FLAG_SK,
           DI_WorkflowFileName,
           DI_WorkflowDirectory,
           DI_CreateDate,
           CRITICAL_FLAG
      FROM DIM_NYC_CriticalFlag
     WHERE CRITICAL_FLAG_SK = @CRITICAL_FLAG_SK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_CriticalFlagSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_CriticalFlagSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_CriticalFlagSelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_CuisineInsProc 
 */

CREATE PROCEDURE DIM_NYC_CuisineInsProc
(
    @CUISINE_DESCRIPTION_SK     int,
    @DI_WorkflowFileName        nvarchar(256),
    @DI_WorkflowDirectory       nvarchar(256),
    @DI_CreateDate              datetime,
    @CUISINE_DESCRIPTION        varchar(30)              = NULL)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_Cuisine(CUISINE_DESCRIPTION_SK,
                                DI_WorkflowFileName,
                                DI_WorkflowDirectory,
                                DI_CreateDate,
                                CUISINE_DESCRIPTION)
    VALUES(@CUISINE_DESCRIPTION_SK,
           @DI_WorkflowFileName,
           @DI_WorkflowDirectory,
           @DI_CreateDate,
           @CUISINE_DESCRIPTION)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_CuisineInsProc: Cannot insert because primary key value not found in DIM_NYC_Cuisine ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_CuisineInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_CuisineInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_CuisineInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_CuisineUpdProc 
 */

CREATE PROCEDURE DIM_NYC_CuisineUpdProc
(
    @CUISINE_DESCRIPTION_SK     int,
    @DI_WorkflowFileName        nvarchar(256),
    @DI_WorkflowDirectory       nvarchar(256),
    @DI_CreateDate              datetime,
    @CUISINE_DESCRIPTION        varchar(30)              = NULL)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_Cuisine
       SET DI_WorkflowFileName         = @DI_WorkflowFileName,
           DI_WorkflowDirectory        = @DI_WorkflowDirectory,
           DI_CreateDate               = @DI_CreateDate,
           CUISINE_DESCRIPTION         = @CUISINE_DESCRIPTION
     WHERE CUISINE_DESCRIPTION_SK = @CUISINE_DESCRIPTION_SK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_CuisineUpdProc: Cannot update  in DIM_NYC_Cuisine ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_CuisineUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_CuisineUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_CuisineUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_CuisineDelProc 
 */

CREATE PROCEDURE DIM_NYC_CuisineDelProc
(
    @CUISINE_DESCRIPTION_SK     int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_Cuisine
     WHERE CUISINE_DESCRIPTION_SK = @CUISINE_DESCRIPTION_SK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_CuisineDelProc: Cannot delete because foreign keys still exist in DIM_NYC_Cuisine ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_CuisineDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_CuisineDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_CuisineDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_CuisineSelProc 
 */

CREATE PROCEDURE DIM_NYC_CuisineSelProc
(
    @CUISINE_DESCRIPTION_SK     int)
AS
BEGIN
    SELECT CUISINE_DESCRIPTION_SK,
           DI_WorkflowFileName,
           DI_WorkflowDirectory,
           DI_CreateDate,
           CUISINE_DESCRIPTION
      FROM DIM_NYC_Cuisine
     WHERE CUISINE_DESCRIPTION_SK = @CUISINE_DESCRIPTION_SK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_CuisineSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_CuisineSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_CuisineSelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Food_PlacesInsProc 
 */

CREATE PROCEDURE DIM_NYC_Food_PlacesInsProc
(
    @FoodPlacesSK             int,
    @DI_WorkflowFileName      nvarchar(256),
    @DI_WorkflowDirectory     nvarchar(256),
    @DBA                      nvarchar(256)            = NULL,
    @CAMIS                    nvarchar(256)            = NULL,
    @DI_CreateDate            datetime)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_Food_Places(FoodPlacesSK,
                                    DI_WorkflowFileName,
                                    DI_WorkflowDirectory,
                                    DBA,
                                    CAMIS,
                                    DI_CreateDate)
    VALUES(@FoodPlacesSK,
           @DI_WorkflowFileName,
           @DI_WorkflowDirectory,
           @DBA,
           @CAMIS,
           @DI_CreateDate)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Food_PlacesInsProc: Cannot insert because primary key value not found in DIM_NYC_Food_Places ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_Food_PlacesInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Food_PlacesInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Food_PlacesInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Food_PlacesUpdProc 
 */

CREATE PROCEDURE DIM_NYC_Food_PlacesUpdProc
(
    @FoodPlacesSK             int,
    @DI_WorkflowFileName      nvarchar(256),
    @DI_WorkflowDirectory     nvarchar(256),
    @DBA                      nvarchar(256)            = NULL,
    @CAMIS                    nvarchar(256)            = NULL,
    @DI_CreateDate            datetime)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_Food_Places
       SET DI_WorkflowFileName       = @DI_WorkflowFileName,
           DI_WorkflowDirectory      = @DI_WorkflowDirectory,
           DBA                       = @DBA,
           CAMIS                     = @CAMIS,
           DI_CreateDate             = @DI_CreateDate
     WHERE FoodPlacesSK = @FoodPlacesSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Food_PlacesUpdProc: Cannot update  in DIM_NYC_Food_Places ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Food_PlacesUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Food_PlacesUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Food_PlacesUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Food_PlacesDelProc 
 */

CREATE PROCEDURE DIM_NYC_Food_PlacesDelProc
(
    @FoodPlacesSK             int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_Food_Places
     WHERE FoodPlacesSK = @FoodPlacesSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Food_PlacesDelProc: Cannot delete because foreign keys still exist in DIM_NYC_Food_Places ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Food_PlacesDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Food_PlacesDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Food_PlacesDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Food_PlacesSelProc 
 */

CREATE PROCEDURE DIM_NYC_Food_PlacesSelProc
(
    @FoodPlacesSK             int)
AS
BEGIN
    SELECT FoodPlacesSK,
           DI_WorkflowFileName,
           DI_WorkflowDirectory,
           DBA,
           CAMIS,
           DI_CreateDate
      FROM DIM_NYC_Food_Places
     WHERE FoodPlacesSK = @FoodPlacesSK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Food_PlacesSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Food_PlacesSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Food_PlacesSelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_ActionsInsProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_ActionsInsProc
(
    @ActionSK                 int,
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_WorkflowFileName      nvarchar(256),
    @DI_CreateDate            datetime,
    @ACTION                   varchar(130)             = NULL)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_Inspection_Actions(ActionSK,
                                           DI_WorkflowDirectory,
                                           DI_WorkflowFileName,
                                           DI_CreateDate,
                                           ACTION)
    VALUES(@ActionSK,
           @DI_WorkflowDirectory,
           @DI_WorkflowFileName,
           @DI_CreateDate,
           @ACTION)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_ActionsInsProc: Cannot insert because primary key value not found in DIM_NYC_Inspection_Actions ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_Inspection_ActionsInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_ActionsInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_ActionsInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_ActionsUpdProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_ActionsUpdProc
(
    @ActionSK                 int,
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_WorkflowFileName      nvarchar(256),
    @DI_CreateDate            datetime,
    @ACTION                   varchar(130)             = NULL)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_Inspection_Actions
       SET DI_WorkflowDirectory      = @DI_WorkflowDirectory,
           DI_WorkflowFileName       = @DI_WorkflowFileName,
           DI_CreateDate             = @DI_CreateDate,
           ACTION                    = @ACTION
     WHERE ActionSK = @ActionSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_ActionsUpdProc: Cannot update  in DIM_NYC_Inspection_Actions ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_ActionsUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_ActionsUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_ActionsUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_ActionsDelProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_ActionsDelProc
(
    @ActionSK                 int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_Inspection_Actions
     WHERE ActionSK = @ActionSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_ActionsDelProc: Cannot delete because foreign keys still exist in DIM_NYC_Inspection_Actions ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_ActionsDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_ActionsDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_ActionsDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_ActionsSelProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_ActionsSelProc
(
    @ActionSK                 int)
AS
BEGIN
    SELECT ActionSK,
           DI_WorkflowDirectory,
           DI_WorkflowFileName,
           DI_CreateDate,
           ACTION
      FROM DIM_NYC_Inspection_Actions
     WHERE ActionSK = @ActionSK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_ActionsSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_ActionsSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_ActionsSelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_GradesInsProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_GradesInsProc
(
    @GradeSK                  int,
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_WorkflowFileName      nvarchar(256),
    @DI_CreateDate            datetime,
    @GRADE                    char(1)                  = NULL)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_Inspection_Grades(GradeSK,
                                          DI_WorkflowDirectory,
                                          DI_WorkflowFileName,
                                          DI_CreateDate,
                                          GRADE)
    VALUES(@GradeSK,
           @DI_WorkflowDirectory,
           @DI_WorkflowFileName,
           @DI_CreateDate,
           @GRADE)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_GradesInsProc: Cannot insert because primary key value not found in DIM_NYC_Inspection_Grades ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_Inspection_GradesInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_GradesInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_GradesInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_GradesUpdProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_GradesUpdProc
(
    @GradeSK                  int,
    @DI_WorkflowDirectory     nvarchar(256),
    @DI_WorkflowFileName      nvarchar(256),
    @DI_CreateDate            datetime,
    @GRADE                    char(1)                  = NULL)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_Inspection_Grades
       SET DI_WorkflowDirectory      = @DI_WorkflowDirectory,
           DI_WorkflowFileName       = @DI_WorkflowFileName,
           DI_CreateDate             = @DI_CreateDate,
           GRADE                     = @GRADE
     WHERE GradeSK = @GradeSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_GradesUpdProc: Cannot update  in DIM_NYC_Inspection_Grades ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_GradesUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_GradesUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_GradesUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_GradesDelProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_GradesDelProc
(
    @GradeSK                  int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_Inspection_Grades
     WHERE GradeSK = @GradeSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_GradesDelProc: Cannot delete because foreign keys still exist in DIM_NYC_Inspection_Grades ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_GradesDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_GradesDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_GradesDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_GradesSelProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_GradesSelProc
(
    @GradeSK                  int)
AS
BEGIN
    SELECT GradeSK,
           DI_WorkflowDirectory,
           DI_WorkflowFileName,
           DI_CreateDate,
           GRADE
      FROM DIM_NYC_Inspection_Grades
     WHERE GradeSK = @GradeSK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_GradesSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_GradesSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_GradesSelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_TypeInsProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_TypeInsProc
(
    @InspectionTypeSK         int,
    @DI_CreateDate            datetime,
    @DI_WorkflowFileName      nvarchar(256),
    @DI_WorkflowDirectory     nvarchar(256),
    @INSPECTION_TYPE          varchar(60)              = NULL)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_Inspection_Type(InspectionTypeSK,
                                        DI_CreateDate,
                                        DI_WorkflowFileName,
                                        DI_WorkflowDirectory,
                                        INSPECTION_TYPE)
    VALUES(@InspectionTypeSK,
           @DI_CreateDate,
           @DI_WorkflowFileName,
           @DI_WorkflowDirectory,
           @INSPECTION_TYPE)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_TypeInsProc: Cannot insert because primary key value not found in DIM_NYC_Inspection_Type ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_Inspection_TypeInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_TypeInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_TypeInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_TypeUpdProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_TypeUpdProc
(
    @InspectionTypeSK         int,
    @DI_CreateDate            datetime,
    @DI_WorkflowFileName      nvarchar(256),
    @DI_WorkflowDirectory     nvarchar(256),
    @INSPECTION_TYPE          varchar(60)              = NULL)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_Inspection_Type
       SET DI_CreateDate             = @DI_CreateDate,
           DI_WorkflowFileName       = @DI_WorkflowFileName,
           DI_WorkflowDirectory      = @DI_WorkflowDirectory,
           INSPECTION_TYPE           = @INSPECTION_TYPE
     WHERE InspectionTypeSK = @InspectionTypeSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_TypeUpdProc: Cannot update  in DIM_NYC_Inspection_Type ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_TypeUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_TypeUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_TypeUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_TypeDelProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_TypeDelProc
(
    @InspectionTypeSK         int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_Inspection_Type
     WHERE InspectionTypeSK = @InspectionTypeSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Inspection_TypeDelProc: Cannot delete because foreign keys still exist in DIM_NYC_Inspection_Type ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_TypeDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_TypeDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_TypeDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Inspection_TypeSelProc 
 */

CREATE PROCEDURE DIM_NYC_Inspection_TypeSelProc
(
    @InspectionTypeSK         int)
AS
BEGIN
    SELECT InspectionTypeSK,
           DI_CreateDate,
           DI_WorkflowFileName,
           DI_WorkflowDirectory,
           INSPECTION_TYPE
      FROM DIM_NYC_Inspection_Type
     WHERE InspectionTypeSK = @InspectionTypeSK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Inspection_TypeSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Inspection_TypeSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Inspection_TypeSelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Violations_CodeInsProc 
 */

CREATE PROCEDURE DIM_NYC_Violations_CodeInsProc
(
    @ViolationCodeSK           int,
    @DI_WorkflowFileName       nvarchar(256),
    @DI_WorkflowDirectory      nvarchar(254),
    @DI_CreateDate             datetime,
    @VIOLATION_DESCRIPTION     nvarchar(254)            = NULL,
    @VIOLATION_CODE            char(5)                  = NULL)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO DIM_NYC_Violations_Code(ViolationCodeSK,
                                        DI_WorkflowFileName,
                                        DI_WorkflowDirectory,
                                        DI_CreateDate,
                                        VIOLATION_DESCRIPTION,
                                        VIOLATION_CODE)
    VALUES(@ViolationCodeSK,
           @DI_WorkflowFileName,
           @DI_WorkflowDirectory,
           @DI_CreateDate,
           @VIOLATION_DESCRIPTION,
           @VIOLATION_CODE)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Violations_CodeInsProc: Cannot insert because primary key value not found in DIM_NYC_Violations_Code ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('DIM_NYC_Violations_CodeInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Violations_CodeInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Violations_CodeInsProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Violations_CodeUpdProc 
 */

CREATE PROCEDURE DIM_NYC_Violations_CodeUpdProc
(
    @ViolationCodeSK           int,
    @DI_WorkflowFileName       nvarchar(256),
    @DI_WorkflowDirectory      nvarchar(254),
    @DI_CreateDate             datetime,
    @VIOLATION_DESCRIPTION     nvarchar(254)            = NULL,
    @VIOLATION_CODE            char(5)                  = NULL)
AS
BEGIN
    BEGIN TRAN

    UPDATE DIM_NYC_Violations_Code
       SET DI_WorkflowFileName        = @DI_WorkflowFileName,
           DI_WorkflowDirectory       = @DI_WorkflowDirectory,
           DI_CreateDate              = @DI_CreateDate,
           VIOLATION_DESCRIPTION      = @VIOLATION_DESCRIPTION,
           VIOLATION_CODE             = @VIOLATION_CODE
     WHERE ViolationCodeSK = @ViolationCodeSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Violations_CodeUpdProc: Cannot update  in DIM_NYC_Violations_Code ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Violations_CodeUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Violations_CodeUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Violations_CodeUpdProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Violations_CodeDelProc 
 */

CREATE PROCEDURE DIM_NYC_Violations_CodeDelProc
(
    @ViolationCodeSK           int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM DIM_NYC_Violations_Code
     WHERE ViolationCodeSK = @ViolationCodeSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('DIM_NYC_Violations_CodeDelProc: Cannot delete because foreign keys still exist in DIM_NYC_Violations_Code ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Violations_CodeDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Violations_CodeDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Violations_CodeDelProc >>>'
go


/* 
 * PROCEDURE: DIM_NYC_Violations_CodeSelProc 
 */

CREATE PROCEDURE DIM_NYC_Violations_CodeSelProc
(
    @ViolationCodeSK           int)
AS
BEGIN
    SELECT ViolationCodeSK,
           DI_WorkflowFileName,
           DI_WorkflowDirectory,
           DI_CreateDate,
           VIOLATION_DESCRIPTION,
           VIOLATION_CODE
      FROM DIM_NYC_Violations_Code
     WHERE ViolationCodeSK = @ViolationCodeSK

    RETURN(0)
END
go
IF OBJECT_ID('DIM_NYC_Violations_CodeSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE DIM_NYC_Violations_CodeSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE DIM_NYC_Violations_CodeSelProc >>>'
go


/* 
 * PROCEDURE: FACT_NewYork_Food_InspectionInsProc 
 */

CREATE PROCEDURE FACT_NewYork_Food_InspectionInsProc
(
    @Inspection_SK              int,
    @Inspection_Date            date                     = NULL,
    @Inspection_Date_SK         int                      = NULL,
    @FoodPlacesSK               int                      = NULL,
    @BoroSK                     int                      = NULL,
    @AddressSK                  int                      = NULL,
    @DI_CreateDate              datetime,
    @PHONE                      char(14)                 = NULL,
    @CUISINE_DESCRIPTION_SK     int                      = NULL,
    @DI_WorkflowDirectory       nvarchar(256),
    @DI_WorkflowFileName        nvarchar(256))
AS
BEGIN
    BEGIN TRAN

    INSERT INTO FACT_NewYork_Food_Inspection(Inspection_SK,
                                             Inspection_Date,
                                             Inspection_Date_SK,
                                             FoodPlacesSK,
                                             BoroSK,
                                             AddressSK,
                                             DI_CreateDate,
                                             PHONE,
                                             CUISINE_DESCRIPTION_SK,
                                             DI_WorkflowDirectory,
                                             DI_WorkflowFileName)
    VALUES(@Inspection_SK,
           @Inspection_Date,
           @Inspection_Date_SK,
           @FoodPlacesSK,
           @BoroSK,
           @AddressSK,
           @DI_CreateDate,
           @PHONE,
           @CUISINE_DESCRIPTION_SK,
           @DI_WorkflowDirectory,
           @DI_WorkflowFileName)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('FACT_NewYork_Food_InspectionInsProc: Cannot insert because primary key value not found in FACT_NewYork_Food_Inspection ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('FACT_NewYork_Food_InspectionInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE FACT_NewYork_Food_InspectionInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE FACT_NewYork_Food_InspectionInsProc >>>'
go


/* 
 * PROCEDURE: FACT_NewYork_Food_InspectionUpdProc 
 */

CREATE PROCEDURE FACT_NewYork_Food_InspectionUpdProc
(
    @Inspection_SK              int,
    @Inspection_Date            date                     = NULL,
    @Inspection_Date_SK         int                      = NULL,
    @FoodPlacesSK               int                      = NULL,
    @BoroSK                     int                      = NULL,
    @AddressSK                  int                      = NULL,
    @DI_CreateDate              datetime,
    @PHONE                      char(14)                 = NULL,
    @CUISINE_DESCRIPTION_SK     int                      = NULL,
    @DI_WorkflowDirectory       nvarchar(256),
    @DI_WorkflowFileName        nvarchar(256))
AS
BEGIN
    BEGIN TRAN

    UPDATE FACT_NewYork_Food_Inspection
       SET Inspection_Date             = @Inspection_Date,
           Inspection_Date_SK          = @Inspection_Date_SK,
           FoodPlacesSK                = @FoodPlacesSK,
           BoroSK                      = @BoroSK,
           AddressSK                   = @AddressSK,
           DI_CreateDate               = @DI_CreateDate,
           PHONE                       = @PHONE,
           CUISINE_DESCRIPTION_SK      = @CUISINE_DESCRIPTION_SK,
           DI_WorkflowDirectory        = @DI_WorkflowDirectory,
           DI_WorkflowFileName         = @DI_WorkflowFileName
     WHERE Inspection_SK = @Inspection_SK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('FACT_NewYork_Food_InspectionUpdProc: Cannot update  in FACT_NewYork_Food_Inspection ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('FACT_NewYork_Food_InspectionUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE FACT_NewYork_Food_InspectionUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE FACT_NewYork_Food_InspectionUpdProc >>>'
go


/* 
 * PROCEDURE: FACT_NewYork_Food_InspectionDelProc 
 */

CREATE PROCEDURE FACT_NewYork_Food_InspectionDelProc
(
    @Inspection_SK              int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM FACT_NewYork_Food_Inspection
     WHERE Inspection_SK = @Inspection_SK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('FACT_NewYork_Food_InspectionDelProc: Cannot delete because foreign keys still exist in FACT_NewYork_Food_Inspection ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('FACT_NewYork_Food_InspectionDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE FACT_NewYork_Food_InspectionDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE FACT_NewYork_Food_InspectionDelProc >>>'
go


/* 
 * PROCEDURE: FACT_NewYork_Food_InspectionSelProc 
 */

CREATE PROCEDURE FACT_NewYork_Food_InspectionSelProc
(
    @Inspection_SK              int)
AS
BEGIN
    SELECT Inspection_SK,
           Inspection_Date,
           Inspection_Date_SK,
           FoodPlacesSK,
           BoroSK,
           AddressSK,
           DI_CreateDate,
           PHONE,
           CUISINE_DESCRIPTION_SK,
           DI_WorkflowDirectory,
           DI_WorkflowFileName
      FROM FACT_NewYork_Food_Inspection
     WHERE Inspection_SK = @Inspection_SK

    RETURN(0)
END
go
IF OBJECT_ID('FACT_NewYork_Food_InspectionSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE FACT_NewYork_Food_InspectionSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE FACT_NewYork_Food_InspectionSelProc >>>'
go


/* 
 * PROCEDURE: FACT_NewYork_FoodInspection_ViolationsInsProc 
 */

CREATE PROCEDURE FACT_NewYork_FoodInspection_ViolationsInsProc
(
    @InspectionViolationSK     int,
    @DI_WorkflowFileName       nvarchar(256),
    @DI_WorkflowDirectory      nvarchar(256),
    @DI_CreateDate             datetime,
    @Record_Date               date,
    @ViolationCodeSK           int                      = NULL,
    @GradeSK                   int                      = NULL,
    @Grade_Date                date                     = NULL,
    @SCORE                     smallint                 = NULL,
    @CRITICAL_FLAG_SK          int                      = NULL,
    @ActionSK                  int                      = NULL,
    @InspectionTypeSK          int                      = NULL,
    @InspectionSK              int                      = NULL,
    @Inspection_SK             int)
AS
BEGIN
    BEGIN TRAN

    INSERT INTO FACT_NewYork_FoodInspection_Violations(InspectionViolationSK,
                                                       DI_WorkflowFileName,
                                                       DI_WorkflowDirectory,
                                                       DI_CreateDate,
                                                       Record_Date,
                                                       ViolationCodeSK,
                                                       GradeSK,
                                                       Grade_Date,
                                                       SCORE,
                                                       CRITICAL_FLAG_SK,
                                                       ActionSK,
                                                       InspectionTypeSK,
                                                       InspectionSK,
                                                       Inspection_SK)
    VALUES(@InspectionViolationSK,
           @DI_WorkflowFileName,
           @DI_WorkflowDirectory,
           @DI_CreateDate,
           @Record_Date,
           @ViolationCodeSK,
           @GradeSK,
           @Grade_Date,
           @SCORE,
           @CRITICAL_FLAG_SK,
           @ActionSK,
           @InspectionTypeSK,
           @InspectionSK,
           @Inspection_SK)

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('FACT_NewYork_FoodInspection_ViolationsInsProc: Cannot insert because primary key value not found in FACT_NewYork_FoodInspection_Violations ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

END
go
IF OBJECT_ID('FACT_NewYork_FoodInspection_ViolationsInsProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE FACT_NewYork_FoodInspection_ViolationsInsProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE FACT_NewYork_FoodInspection_ViolationsInsProc >>>'
go


/* 
 * PROCEDURE: FACT_NewYork_FoodInspection_ViolationsUpdProc 
 */

CREATE PROCEDURE FACT_NewYork_FoodInspection_ViolationsUpdProc
(
    @InspectionViolationSK     int,
    @DI_WorkflowFileName       nvarchar(256),
    @DI_WorkflowDirectory      nvarchar(256),
    @DI_CreateDate             datetime,
    @Record_Date               date,
    @ViolationCodeSK           int                      = NULL,
    @GradeSK                   int                      = NULL,
    @Grade_Date                date                     = NULL,
    @SCORE                     smallint                 = NULL,
    @CRITICAL_FLAG_SK          int                      = NULL,
    @ActionSK                  int                      = NULL,
    @InspectionTypeSK          int                      = NULL,
    @InspectionSK              int                      = NULL,
    @Inspection_SK             int)
AS
BEGIN
    BEGIN TRAN

    UPDATE FACT_NewYork_FoodInspection_Violations
       SET DI_WorkflowFileName        = @DI_WorkflowFileName,
           DI_WorkflowDirectory       = @DI_WorkflowDirectory,
           DI_CreateDate              = @DI_CreateDate,
           Record_Date                = @Record_Date,
           ViolationCodeSK            = @ViolationCodeSK,
           GradeSK                    = @GradeSK,
           Grade_Date                 = @Grade_Date,
           SCORE                      = @SCORE,
           CRITICAL_FLAG_SK           = @CRITICAL_FLAG_SK,
           ActionSK                   = @ActionSK,
           InspectionTypeSK           = @InspectionTypeSK,
           InspectionSK               = @InspectionSK,
           Inspection_SK              = @Inspection_SK
     WHERE InspectionViolationSK = @InspectionViolationSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('FACT_NewYork_FoodInspection_ViolationsUpdProc: Cannot update  in FACT_NewYork_FoodInspection_Violations ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('FACT_NewYork_FoodInspection_ViolationsUpdProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE FACT_NewYork_FoodInspection_ViolationsUpdProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE FACT_NewYork_FoodInspection_ViolationsUpdProc >>>'
go


/* 
 * PROCEDURE: FACT_NewYork_FoodInspection_ViolationsDelProc 
 */

CREATE PROCEDURE FACT_NewYork_FoodInspection_ViolationsDelProc
(
    @InspectionViolationSK     int)
AS
BEGIN
    BEGIN TRAN

    DELETE
      FROM FACT_NewYork_FoodInspection_Violations
     WHERE InspectionViolationSK = @InspectionViolationSK

    IF (@@error!=0)
    BEGIN
        RAISERROR  ('FACT_NewYork_FoodInspection_ViolationsDelProc: Cannot delete because foreign keys still exist in FACT_NewYork_FoodInspection_Violations ', 10, 1)
        ROLLBACK TRAN
        RETURN(1)
    
    END

    COMMIT TRAN

    RETURN(0)
END
go
IF OBJECT_ID('FACT_NewYork_FoodInspection_ViolationsDelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE FACT_NewYork_FoodInspection_ViolationsDelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE FACT_NewYork_FoodInspection_ViolationsDelProc >>>'
go


/* 
 * PROCEDURE: FACT_NewYork_FoodInspection_ViolationsSelProc 
 */

CREATE PROCEDURE FACT_NewYork_FoodInspection_ViolationsSelProc
(
    @InspectionViolationSK     int)
AS
BEGIN
    SELECT InspectionViolationSK,
           DI_WorkflowFileName,
           DI_WorkflowDirectory,
           DI_CreateDate,
           Record_Date,
           ViolationCodeSK,
           GradeSK,
           Grade_Date,
           SCORE,
           CRITICAL_FLAG_SK,
           ActionSK,
           InspectionTypeSK,
           InspectionSK,
           Inspection_SK
      FROM FACT_NewYork_FoodInspection_Violations
     WHERE InspectionViolationSK = @InspectionViolationSK

    RETURN(0)
END
go
IF OBJECT_ID('FACT_NewYork_FoodInspection_ViolationsSelProc') IS NOT NULL
    PRINT '<<< CREATED PROCEDURE FACT_NewYork_FoodInspection_ViolationsSelProc >>>'
ELSE
    PRINT '<<< FAILED CREATING PROCEDURE FACT_NewYork_FoodInspection_ViolationsSelProc >>>'
go


