--Create new table from organizational data
CREATE TABLE ORG_DATA_COPY AS SELECT * FROM ORG.INDICATOR_TABLES_JOINED;

SELECT * FROM ORG_DATA_COPY;

--Delete selected records (not needed for analysis)
DELETE FROM ORG_DATA_COPY WHERE FIELD_1 IN ('Unspecified_Record_1', 'Unspecified_Record_2', 'Unspecified_Record_3');

--Select columns that do not have null value
CREATE TABLE ORG_DATA_FILTER AS SELECT FIELD_1, UNSPECIFIED_FIELD_1, UNSPECIFIED_FIELD_2,
UNSPECIFIED_FIELD_3, UNSPECIFIED_FIELD_4, UNSPECIFIED_FIELD_5, UNSPECIFIED_FIELD_6,
UNSPECIFIED_FIELD_7, UNSPECIFIED_FIELD_8, UNSPECIFIED_FIELD_9, UNSPECIFIED_FIELD_10,
UNSPECIFIED_FIELD_11, UNSPECIFIED_FIELD_12 FROM ORG_DATA_COPY;

SELECT * FROM ORG_DATA_FILTER;

--Delete second and third columns (not quantitative)
ALTER TABLE ORG_DATA_FILTER DROP COLUMN UNSPECIFIED_FIELD_1;
ALTER TABLE ORG_DATA_FILTER DROP COLUMN UNSPECIFIED_FIELD_2;

SELECT * FROM ORG_DATA_FILTER;

---We are interested in the following variables: Unspecified Variable 1, Unspecified Variable, Unspecified Variable 3

CREATE TABLE ORG_DATA_3VAR AS SELECT "FIELD_1", "Unspecified_Variable_1", "Unspecified_Variable_2", "Unspecified_Variable_3" FROM ORG_DATA_FILTER;

SELECT * FROM ORG_DATA_3VAR;

---Rename columns for simplicity

ALTER TABLE ORG_DATA_3VAR
RENAME COLUMN "Unspecified_Variable_1" TO "Descriptive_Name_1";

ALTER TABLE ORG_DATA_3VAR
RENAME COLUMN "Unspecified_Variable_2" TO "Descriptive_Name_2";

ALTER TABLE ORG_DATA_3VAR
RENAME COLUMN "Unspecified_Variable_3" TO "Descriptive_Name_3";

SELECT * FROM ORG_DATA_3VAR;



