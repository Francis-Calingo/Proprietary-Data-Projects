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
