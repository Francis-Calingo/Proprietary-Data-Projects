# Proprietary Data Projects

This repo lists tasks and projects involving proprietary data (i.e., data that cannot be fully disclosed to the public) and provide valuable insights for respective organizations and employers.

# Table of Contents
* [Audit at Great Canadian Casino Resort Toronto](#audit-at-great-canadian-casino-resort-toronto)
* [Elections Canada](#elections-canada)
* [2025 National Mental Health Datathon](#2025-national-mental-health-datathon)
* [M2M Tech](#m2m-tech)
* [Filipino Canadian Youth Organizations](#filipino-canadian-youth-organizations)

# Audit at Great Canadian Casino Resort Toronto

<img src="https://img.shields.io/badge/Microsoft_Excel-217346?logo=microsoft-excel&logoColor=white"/>

Utilized Excel and accounting software such as Ballys to verify financial entries by gaming floor personnel. However, discrepancies often arise with reporting, for legitimate reasons.

In this example, I will show I was able to harness Excel to help streamline the verification process. In this scenario, the Tables department reports certain amount of money for some tables, but the system reports $0 for said tables, most likely due to glitches, which are not unusual. In that case, I would download both the system and Tables department report as csv's, and compare both. **The values and table names are made-up to maintain the proprietary nature of the verification process. There are also only a few records present for demonstration purposes only, and does not accurately reflect the high volume of tables available on the gaming floor.**

<b>CSV from Table Games Department</b>

| Table Game  | Other Columns | Amount Reported ($) |
| ------------- | ------------- | ------------- |
| AB501 | ------------- | 766 |
| AB502 | ------------- | 201 |
| AB503 | ------------- | 1055 |
| CS307 | ------------- | 94 |
| CS308 | ------------- | 476 |
| CS309 | ------------- | 877 |
| FX702 | ------------- | 503 |
| KL244 | ------------- | 3022 |
| KL246 | ------------- | 711 |
| TT904 | ------------- | 2491 |

<b>CSV from System</b>

| Table Game  | Other Columns | Amount Reported ($) |
| ------------- | ------------- | ------------- |
| AB501 | ------------- | 766 |
| AB502 | ------------- | 201 |
| AB503 | ------------- | 0 |
| CS307 | ------------- | 94 |
| CS308 | ------------- | 476 |
| CS309 | ------------- | 0 |
| FX702 | ------------- | 0 |
| KL244 | ------------- | 3022 |
| KL246 | ------------- | 711 |
| TT904 | ------------- | 0 |

<b>New CSV</b>

| Table Game  | Amount Reported, Tables | Amount Reported, System | System - Tables |
| ------------- | ------------- | ------------- | ------------- |
| AB501 | 766 | 766 | ```=C2-B2 ```|
| AB502 | 201 | 201 | ```=C3-B3 ```|
| AB503 | 1055 | 0 | ```=C4-B4 ```|
| CS307 | 94 | 94 | ```=C5-B5 ```|
| CS308 | 476 | 476 | ```=C6-B6 ```|
| CS309 | 877 | 0 | ```=C7-B7 ```|
| FX702 | 503 | 0 | ```=C8-B8 ```|
| KL244 | 3022 | 3022 | ```=C9-B9 ```|
| KL246 | 711 | 711 | ```=C10-B10 ```|
| TT904 | 2491 | 0 | ```=C11-B11 ```|

Some rows on the fourth column will show non-zero values, which can then be easily filtered for, resulting in the tables that have discrepancies.


[<b>Back to Table of Contents</b>](#table-of-contents)

---

# Elections Canada

<img src="https://img.shields.io/badge/Microsoft_Excel-217346?logo=microsoft-excel&logoColor=white"/>
<img src="https://img.shields.io/badge/Media%20Monitoring-Meltwater-1DB2AC?logo=meltwater&logoColor=white"/>

### Weekly Dashboard

To better present my weekly findings to senior analysts, I developed weekly dashboards that succinctly summarizes key metric related to collated content (i.e., relevant posts and comments from the Canadian digital media environment that touches on topics pertinent to the agency such as, but not limited to, democratic institutions and views on electoral systems). The following is a sample dashboard (with proprietary data being redacted in red).

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/ElectionsCanadaDashboard.JPG"/>

### Filipino Language Monitoring

I also collaborated with a senior analyst to create a Tagalog language Meltwater Boolean query to help capture posts and comments from social and traditional media platforms:

```meltwater

(“Halalan Canada” OR “Halalan sa Canada” OR  “Eleksyons Canada” OR “Eleksyons sa Canada” OR “Eleksyon sa Canada” OR “Komisyoner ng Canada Elections” OR “Komisyoner sa Eleksyon sa Canada” OR “Komisyoner ng Halalan sa Canada” OR “Batas sa halalan sa Canada”) 
OR 
((“Araw ng Eleksyon” OR “Pagboto sa mail” OR “Bumoto nang advance” OR “panghihimasok ng dayuhan” OR “susunod na halalan” OR “susunod na eleksyon” OR “susunod na election” OR “45th na election" OR “panghalalan” OR “45th na eleksyon" OR “45th na halalan" OR “Halalan 2025” OR “Halalan 2025”  OR “punong opisyal ng electoral” OR “punong opisyal ng Eleksyon” OR “punong opisyal ng halalan” OR “opisyal ng electoral” OR “opisyal ng Eleksyon” OR “opisyal ng halalan” OR "Araw ng Eleksyon” OR “Araw ng Halalan” OR “Petsa ng halalan” OR “Petsa ng eleksyon” OR  “Bumoto nang advance” OR “panghihimasok ng dayuhan” OR “Pangkalahatang halalan” OR “Pangkalahatang eleksyon” OR “Pederal na halalan” OR “Pederal na eleksyon” OR "Halalan" OR “Eleksyon” OR “Pederal na byelection” OR  “Pederal na by-election” OR “Paunang pagboto” OR “listahan ng mga botante” OR “lugar ng pagboto” OR “lokasyon ng Pagboto” OR “istasyon ng botohan” OR “istasyon sa pagboto” OR “Gabay sa pagboto” OR "makina sa pagboto" OR “Online na pagboto” OR "Pagboto sa mail" OR “bumoto sa pamamagitan ng koreo” OR “Ikinoreong Pagboto”  OR “balotang papel” OR “espesyal na balota”) 
AND 
("Canada" OR “Canadian” OR “Canadyano” OR “Kanadyano” OR “Winnipeg” OR “Winnipeg North” OR “Winnipeg Centre” OR “Mount Royal” OR “Scarborough Centre” OR “Eglinton—Lawrence” OR “Eglinton-Lawrence” OR “Eglinton Lawrence”  OR “York Centre” OR “Mississauga—Streetsville” OR “Mississauga-Streetsville” OR “Mississauga Streetsville” OR “Calgary Forest Lawn” OR “Edmonton West” OR “Saskatoon West” OR “New Westminster—Burnaby” OR “New Westminster-Burnaby” OR “New Westminster Burnaby” OR “New Westminster” OR “Burnaby” OR “Fleetwood—Port Kells” OR “Fleetwood-Port Kells” OR “Fleetwood Port Kells” OR “Surrey Centre” OR “Surrey” OR “Vancouver Kingsway” OR “Vancouver South”))

```

Note that the riding names represent the federal ridings with the highest per-capita Filipino population.

### Special Quantitative Projects

I have led two special quantitative projects ascertaining demographic and media information on the Filipino Canadian community. The first one is complete and the other one is ongoing, both covering the demographic aspects of each project:

* [Brief Demographic Report of the Filipino Canadian Community](http://github.com/Francis-Calingo/ELECTIONS-CANADA-RESEARCH-PROJECT-Filipino-Canadian-Demographic-Report)
* [Demographics of Ilocano Speakers in Canada](https://github.com/Francis-Calingo/ELECTIONS-CANADA-RESEARCH-PROJECT-Ilocano-Speakers-Canada)

[<b>Back to Table of Contents</b>](#table-of-contents)

---

# 2025 National Mental Health Datathon

<img src="https://img.shields.io/badge/Oracle-F80000?logo=oracle&logoColor=black"/>
<img src="https://img.shields.io/badge/PLSQL-F80000?logo=oracle&logoColor=black"/>
<img src="https://img.shields.io/badge/Nextcloud-0082C9?logo=Nextcloud&logoColor=white&style=plastic" alt="NextCloud Badge"/>
<img src="https://img.shields.io/badge/Microsoft_Excel-217346?logo=microsoft-excel&logoColor=white"/>

[Event details](https://www.convergementalhealth.org/event/the-converge---data-for-good-national-datathon-a-movement-for-mental-health-data-innovation)

Collaborated with a team of seven that contributed to a pipeline that involved uploading documentation onto NextCloud, using Oracle SQL to transform proprietary mental health data from across **10 different datasets (totalling 11,919,097 entries-1,702,900 records and 97 fields-spanning 6 years)**, then feeding processed data to Tableau to construct interactive dashboards that was presented to participating mental health organizations such as the Canadian Mental Health Association. I used the following sql script to create a copy of an organization’s database, then filter out null values and unnecessary records and fields (keep in mind that generic names have been used in place of the actual names of datasets, records, fields, variables, etc.):

```sql
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
```

The final database was exported as a csv file then uploaded to NextCloud to be fed to the Tableau dashboard.

To download the SQL file hosting the above sql script (maintaining the redactions): [Download file](https://github.com/Francis-Calingo/Proprietary-Data-Projects/raw/main/Datathon%20Data%20PreProcessing%20Script.sql)

[<b>Back to Table of Contents</b>](#table-of-contents)

---

# M2M Tech

<img src="https://img.shields.io/badge/powershell-5391FE?logo=powershell&logoColor=white&style=plastic" alt="PowerShell Badge"/>  

ONGOING-Currently working with a client company to create a pipeline to deploy an object detection machine learning model that will augment the company’s geospatial capabilities in environmental disaster mitigation, utilizing Python, PowerShell, and Label Studio.

To install Python: [Install](https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe)

PowerShell script for installing Label Studio:

```powershell
python --version
pip --install
```

```powershell
pip install label-studio
```

[<b>Back to Table of Contents</b>](#table-of-contents)

---

# Filipino Canadian Youth Organizations

<img src="https://img.shields.io/badge/Google%20Sheets-34A853?logo=google-sheets&logoColor=white&style=plastic" alt="Google Sheets Badge"/>  
<img src="https://img.shields.io/badge/Gmail-D14836?logo=gmail&logoColor=white&style=plastic" alt="Gmail Badge"/>  

### Organization 1

As part of the organization's year-end assessment evaluating the 2022-2023 program period, I was tasked with collecting and analyzing the organization's Instagram posts posted throughout the program period, delivering valuable and actionable insights for the next program period.

<b>Data Sheet 1: Main Sheet </b>

**638 entries (58 records x 11 fields)**

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg1.1.png"/>

<b>Data Sheet 2: Heatmap-Posting Times </b>

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg1.2.png"/>

<b>Data Sheet 3: Heatmap-Engagements by Topic</b>

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg1.3.png"/>

<b>Data Sheet 4: Top 5 Lists-Engagements by Topics </b>

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg1.4.png"/>

### Organization 2

I spearheaded and was the head of the organizing committee responsible for this university organization's inaugural 4-month competition filled with challenges.

<b>Data Sheet 1: Participant Sign-Up Information </b>

**400 entries (25 records x 16 fields)**

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg2.1.png"/>

<b>Data Sheet 2: Feedback Form Data, Organizing Committee Members </b>

**132 entries (12 records x 11 fields)**

Google Sheet file generated from Google Form responses.

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg2.2.png"/>

<b>Data Sheet 3: Progression of Points (as of March) </b>

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg2.3.png"/>


### Organization 3

To automate mass-emailing of organizations and individuals (with attached letters), while ensuring that the names of the individual recipient are embedded in both the email and documents to keep the correspondance genuine, Gmail's Mail Merge was used.

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg3.3.png"/>

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg3.1.png"/>

The resulting email with attachments:

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/FilipinoOrg3.2.png"/>

[<b>Back to Table of Contents</b>](#table-of-contents)


