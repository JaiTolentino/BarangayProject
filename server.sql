CREATE DATABASE barangayDB;

CREATE TABLE headresidentInfo (
    Fname VARCHAR(255) NOT NULL,
    LName VARCHAR(255) NOT NULL,
    Age INT NOT NULL,
    Sex CHAR NOT NULL,
    familyCode VARCHAR(255) NOT NULL,
    phoneNumber int NOT NULL,
    CONSTRAINT headresidentInfo_pk PRIMARY KEY (familyCode)
);

CREATE TABLE familyResidentInfo (
    FName VARCHAR(255) NOT NULL,
    LName VARCHAR(255) NOT NULL,
    Age INT NOT NULL,
    Sex CHAR NOT NULL,
    headFamCode VARCHAR(255) NOT NULL,
    phoneNumber int NOT NULL,
    CONSTRAINT headFamCode_fk FOREIGN KEY (headFamCode)
    REFERENCES headresidentInfo(familyCode)
    ON DELETE SET NULL
    ON UPDATE SET NULL
);

CREATE TABLE familyAccount (
    familyCode VARCHAR(255),
    resident_code VARCHAR(255),

);