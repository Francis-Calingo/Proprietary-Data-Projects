# Proprietary Data Projects

This repo lists tasks and projects involving proprietary data (i.e., data that cannot be fully disclosed to the public) and provide valuable insights for respective organizations and employers.

# Table of Contents
* [Audit at Great Canadian Casino Resort Toronto (August 2022 - August 2024)](#audit-at-great-canadian-casino-resort-toronto-august-2022---august-2024)
* [Elections Canada (August 2024 - June 2025)](#elections-canada-august-2024---june-2025)
* [2025 Converge National Mental Health Datathon](#2025-converge-national-mental-health-datathon)
* [Object Detection Model, M2M Tech Client Company (April 2025 - July 2025)](#object-detection-model-m2m-tech-client-company-april-2025---july-2025)
* [Filipino Canadian Youth Organizations (2016 - Present)](#filipino-canadian-youth-organizations-2016---present)

---

# Audit at Great Canadian Casino Resort Toronto (August 2022 - August 2024)

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

# Elections Canada (August 2024 - June 2025)

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

In a similar vein, I developed a Boolean query for the Ilocano language: 

```meltwater
("Eleksion" OR “Eleksyon ti Canada” OR “Eleksion ti Canada” OR “Komisionado ti Eleksyon ti Canada” OR “Komisionado ti Eleksion ti Canada” OR “Linteg ti Eleksyon ti Canada” OR “Linteg ti Eleksion ti Canada” OR “Hepe ti Eleksyon” OR “Hepe ti Eleksion” OR “Opisial ti eleksyon” OR “Opisial ti eleksion”)
OR 
((“Aldaw ti *botos” OR “Aldaw ti Pagboto*” OR “Aldaw ti Eleksion” OR “Aldaw ti Eleksyon” OR “Aldaw ti Election” OR “Petsa ti *botos” OR “Petsa ti pagboto*” OR “Petsa ti Eleksion” OR “Petsa ti Eleksyon” OR “babaen ti koreo” OR “babaen ti koreo” OR “babaen ti koreo” OR “Balota babaen ti mail” OR “Maisapsapa a panagbutos” OR “Maisapsapa a panagbotos” OR “Panangsinga ti ganggannaet” OR “Sumampitaw” OR “Kinasoberano” OR “sumaruno nga eleksyon” OR “sumaruno nga eleksion” OR “Panagbobotos” OR “Panagbubotos” OR “Panangibotos” OR “Espesial nga eleksyon” OR “Espesial nga eleksion” OR “Nasapa nga eleksyon” OR “Nasapa nga eleksion” OR “Eleksion Heneral” OR “Heneral nga eleksion” OR “Heneral nga eleksyon" OR “Sapasap nga eleksyon” OR “Sapasap nga eleksion” OR “Pederal nga eleksion” OR “Pederal nga eleksyon" OR “Pederal nga byelection” OR “Pederal nga by-election” OR “listaan dagiti botante” OR “Giya iti panagbotos” OR “Giya iti panagbutos” OR “Makina ti panagbutos” OR “Makina ti panagbotos” OR “Makina ti pagbotosan” OR “Makina ti Dominion” OR “Online a panagbutos” OR “Online a panagbotos” OR “papel a balota” OR “espesial a balota” OR “Pilien” OR “Agpili” OR “Panagbotos” OR “Panagbutos” OR “Agboto” OR “Agbotos” OR “Agbuto” OR “Agbutos” OR “Iboto” OR “Ibotos” OR “Ibuto” OR “Ibutos” OR “Mangiboto” OR “Mangibotos” OR “Mangibuto” OR “Mangibutos” OR “Makapagboto” OR “Makapagbotos” OR “Makapagbuto” OR “Makapagbutos” OR “Nagbotosan” OR “Nagbutosan” OR “Botosak” OR “Butosak” OR “Ibotosak” OR “Ibutosak” OR “Botosam” OR “Butosam” OR “Ibotosam” OR “Ibutosam” OR “Botosna” OR “Butosna” OR “Ibotosna” OR “Ibutosna” OR “Botosmi” OR “Butosmi” OR “Ibotosmi” OR “Ibutosmi” OR “Botostayo” OR “Butostayo” OR “Ibotostayo” OR “Ibutostayo” OR “Botosyo” OR “Butosyo” OR “Ibotosyo” OR “Ibutosyo” OR “Botosda” OR “Butosda” OR “Ibotosda” OR “Ibutosda” OR “Botante” OR “Balota” OR “saan a umili” OR “haan a umili” OR “saan a makipagili” OR “haan a makipagili” OR “Istasion ti *botos” OR “Istasion ti Pagboto*” OR “Istasion a *botos” OR “Istasion a Pagboto*” OR “Presinto ti *botos” OR “Presinto ti Pagboto*” OR “Presinto a *botos” OR “Presinto a Pagboto*” OR “Lugar ti *botos” OR “Lugar ti Pagboto*” OR “Lugar a *botos” OR “Lugar a Pagboto*” OR “Lokasion ti *botos” OR “Lokasion ti Pagboto*” OR “Lokasion a *botos” OR “Lokasion a Pagboto*” OR “Kard ti botante” OR “kard ti panagbotos” OR “tarheta ti botante” OR “tarheta ti panagbotos” OR “ID ti botante” OR “ID ti panagbotos” OR “Edad ti panagbotos” OR “Edad ti panagbutos” OR “edad ti pagbotosan” OR “Ballasiw-Taaw a Botante” OR “kameng ti Parlamento” OR “Gobierno ti Canada” OR “Gobierno ti Kanada” OR “Kangrunaan a Ministro” OR “Demokrasia”) 
AND 

(“Canad?ano” OR “Kanad?ano” OR “Taga-Kanada” OR “Taga-Canada” OR “Mount Royal” OR “Saint-Laurent” OR “Saint Laurent” OR “Notre-Dame-de-Gr?ce—Westmount” OR “Notre-Dame-de-Gr?ce-Westmount” OR “Notre-Dame-de-Gr?ce” OR “Westmount” OR “York South—Weston—Etobicoke” OR “York South-Weston-Etobicoke” OR “York South” OR “Weston” OR “Etobicoke” OR “Humber River—Black Creek” OR “Humber River-Black Creek” OR “Humber River” OR “Black Creek” OR  “Willowdale” OR “Davenport” “Eglinton—Lawrence” OR “Eglinton-Lawrence” OR “Eglinton Lawrence”  OR "Scarborough Centre—Don Valley East” OR “Scarborough Centre-Don Valley East” OR “Don Valley East” OR “Scarborough Centre” OR “York Centre” OR “Winnipeg” OR “Winnipeg North” OR “Winnipeg Centre” OR “Calgary East” OR “Calgary Heritage" OR “North Vancouver—Capilano” OR “Vancouver Kingsway” OR “Vancouver South” OR “North Vancouver-Capilano” OR “North Vancouver” OR “Capilano” OR “Vancouver Fraserview—South Burnaby” OR  “Vancouver Fraserview-South Burnaby”  OR “Vancouver Fraserview” OR “South Burnaby”  OR “Burnaby”))
```

Note that the riding names represent the federal ridings with the highest per-capita Ilocano population or the highest Ilocano speaksers-Tagalog speakers ratio. Calculations for both the Ilocano and Tagalog riding populations were determined based on data from the following two special quantitative projects that I lead for the agency:

* [Brief Demographic Report of the Filipino Canadian Community](http://github.com/Francis-Calingo/ELECTIONS-CANADA-RESEARCH-PROJECT-Filipino-Canadian-Demographic-Report)
  
* [Demographics of Ilocano Speakers in Canada](https://github.com/Francis-Calingo/ELECTIONS-CANADA-RESEARCH-PROJECT-Ilocano-Speakers-Canada)

[<b>Back to Table of Contents</b>](#table-of-contents)

---

# 2025 Converge National Mental Health Datathon

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

# Object Detection Model, M2M Tech Client Company (April 2025 - July 2025)

<img src="https://img.shields.io/badge/powershell-5391FE?logo=powershell&logoColor=white&style=plastic" alt="PowerShell Badge"/>  

<img src="https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=fff&style=plastic" alt="Python Badge"/>

<img src="https://img.shields.io/badge/Google%20Colab-F9AB00?logo=googlecolab&logoColor=fff&style=plastic" alt="Google Colab Badge"/>

Under M2M Tech, collaborated in a 19-member team and supported a client company in creating a pipeline to deploy an object detection machine learning model that will augment the company’s geospatial capabilities in environmental disaster mitigation, utilizing Python, PowerShell, and Label Studio.

To install Python: [Install](https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe)

### PowerShell for Batch Uploading Images

PowerShell script for installing Label Studio:

```powershell
python --version
pip --install
```

```powershell
pip install label-studio
```

PowerShell script for creating batches of downloaded images (path file and file names redacted in compliance with NDA):

```powershell
#### UNZIP AFTER DOWNLOADING IMAGES AS ZIP FILE ####


cd "C:\path\to\folder"  


Expand-Archive -Path "C:\path\to\folder\File-Of-Images-To-Unzip.zip" -DestinationPath "target_images"


#### SORT INTO BATCHES ####


cd "C:\path\to\folder"  


Expand-Archive -Path "File-Of-Images-To-Unzip.zip" -DestinationPath "target_images"
# Create 'batches' folder
New-Item -ItemType Directory -Path "..\folder\batches" -Force | Out-Null
# Change directory into 'fire_images'
Set-Location -Path "..\target_images\Object"
# Initialize counter
$i = 0
# --- Loop through each image in 'Object' folder and move to batch folders ---
Get-ChildItem -Path "..\Object" -File | ForEach-Object {
   
    # Calculate batch number (each batch contains 100 images)
    $batchNumber = [math]::Floor($i / 100)
   
    # Set the folder path for the batch
    $batchFolder = "../batches/batch_$batchNumber"


    # Check if the batch folder exists; if not, create it
    if (-not (Test-Path $batchFolder)) {
        New-Item -ItemType Directory -Path $batchFolder | Out-Null
    }


    # Move the current image into the appropriate batch folder
    Move-Item $_.FullName -Destination $batchFolder
   
    # Increment the counter for each file processed
    $i++
}
```

### Python for Uploading Sample Images

Python script to select 10 random images (path file and file names redacted in compliance with NDA):

```python
# Import dependencies


import zipfile
import os
import random
import shutil


# Set variables


zip_path = r'C:\path\to\folder\File-Of-Images-To-Unzip.zip"'  # zip file path
all_images_root = r'C:\path\to\folder\all_images'  # all_images will be folder housing unzipped images
batch_dir = r'C:\path\to\folder\batch_folder'      # folder to store randomly selected sample images
sample_size = 10


with zipfile.ZipFile(zip_path, 'r') as zip_ref:
    zip_ref.extractall(all_images_root)


print(f"✅ Unzipped to '{all_images_root}'")


# Create batch folder if it doesn't exist


os.makedirs(batch_dir, exist_ok=True)


# Recursively collect all image files


image_extensions = ('.jpg', '.jpeg', '.png', '.gif')
all_images = []


for root, dirs, files in os.walk(all_images_root):
    for file in files:
        if file.lower().endswith(image_extensions):
            full_path = os.path.join(root, file)
            all_images.append(full_path)


# Check if there are enough images


sample_size = 10
if len(all_images) < sample_size:
    raise ValueError(f"Not enough images to sample {sample_size}. Found only {len(all_images)}.")


# Sample and copy the images


sampled_images = random.sample(all_images, sample_size)


for img_path in sampled_images:
    dest_path = os.path.join(batch_dir, os.path.basename(img_path))
    shutil.copy(img_path, dest_path)


print(f"Copied {sample_size} random images to '{batch_dir}'.")
```

### Jupyter Notebook Script for Unit Testing

Unit testing was executed in a trainer notebook:

```jupyter
with open("test_trainer.py", "w") as f:
    f.write('''
######======Original trainer.py script (certain parts redacted)======######

from typing import Dict, Any, Optional
import torch
import torch.nn as nn
#from ..utils.logging import get_logger

def get_logger(name):
    class DummyLogger:
        def info(self, msg):
            print(f"[{name}] {msg}")
    return DummyLogger()

logger = get_logger(__name__)

class ModelTrainer:
    """Handles model training and evaluation."""

    def __init__(self, model: nn.Module, config: Dict[str, Any]):
        #####---REDACTED---#####
        logger.info("Initialized ModelTrainer")

    def train(self,
             train_loader: torch.utils.data.DataLoader,
             val_loader: torch.utils.data.DataLoader,
             num_epochs: int,
             save_path: str) -> Dict[str, float]:
        #####---REDACTED---#####
        logger.info(f"Starting training for {num_epochs} epochs")
        pass

    def evaluate(self,
                val_loader: torch.utils.data.DataLoader) -> Dict[str, float]:
        #####---REDACTED---#####
        logger.info("Starting model evaluation")
        pass

######======Script for unit testing with pytest======######

import pytest
import torch
import torch.nn as nn

# The ModelTrainer class is already defined in the previous cell


# Create dummy dataset of 10 samples, each sample containing an a row 10 random numbers, and 1 label
class DummyDataset(torch.utils.data.Dataset):
    def __len__(self):
        return 10
    def __getitem__(self, idx):
        return torch.randn(1, 10), torch.tensor(1)

# Create dummy model for testing (10 input features and 1 output)
class DummyModel(nn.Module):
    def __init__(self):
        super().__init__()
        self.linear = nn.Linear(10, 1)
    def forward(self, x):
        return self.linear(x)

# Start unit testing
@pytest.fixture
def setup_trainer():
  # Give the trainer a new dummy model and an empty config
    model = DummyModel()
    config = {}
    trainer = ModelTrainer(model, config)
    return trainer, model, config

def test_init(setup_trainer):
  # Test __init__
    trainer, model, config = setup_trainer
    assert trainer.model == model
    assert trainer.config == config

def test_train_returns_none(setup_trainer):
  # Test train
    trainer, _, _ = setup_trainer
    train_loader = torch.utils.data.DataLoader(DummyDataset(), batch_size=2)
    val_loader = torch.utils.data.DataLoader(DummyDataset(), batch_size=2)
    result = trainer.train(train_loader, val_loader, num_epochs=1, save_path="model.pth")
    assert result is None

def test_evaluate_returns_none(setup_trainer):
  # Test evaluate
    trainer, _, _ = setup_trainer
    val_loader = torch.utils.data.DataLoader(DummyDataset(), batch_size=2)
    result = trainer.evaluate(val_loader)
    assert result is None
    ''')'

!pytest test_trainer.py --maxfail=1 --disable-warnings -q
```

<img src="https://github.com/Francis-Calingo/Proprietary-Data-Projects/blob/main/images/UnitTesting.png"/>

[<b>Back to Table of Contents</b>](#table-of-contents)

---

# Filipino Canadian Youth Organizations (2016 - Present)

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


