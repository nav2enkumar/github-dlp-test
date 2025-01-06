# Define source and destination paths
$sourcePath = "C:\SourceFolder"
$destinationPath = "D:\BackupFolder"

# Create the destination folder if it doesn't exist
if (!(Test-Path -Path $destinationPath)) {
    New-Item -ItemType Directory -Path $destinationPath
    Write-Host "Created destination folder: $destinationPath"
}

# Get all files in the source folder
$files = Get-ChildItem -Path $sourcePath -File

# Copy each file to the destination folder
foreach ($file in $files) {
    $destinationFile = Join-Path -Path $destinationPath -ChildPath $file.Name
    Copy-Item -Path $file.FullName -Destination $destinationFile -Force
    Write-Host "Copied $($file.Name) to $destinationPath"
}

Write-Host "Backup completed successfully!"
