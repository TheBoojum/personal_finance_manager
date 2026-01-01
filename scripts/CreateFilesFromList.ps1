#Requires -Version 7.5.0

param (
    [Parameter(Mandatory = $true)]
    [string]$InputFile,

    [Parameter(Mandatory = $false)]
    [string]$TargetFolder = $PWD.Path
)

# Check if the input file exists
if (-not (Test-Path -Path $InputFile)) {
    Write-Error "Input file '$InputFile' does not exist."
    exit 1
}

# Check if the target folder exists, create if not
if (-not (Test-Path -Path $TargetFolder)) {
    New-Item -ItemType Directory -Path $TargetFolder -Force | Out-Null
}

# Read the list of file names from the input file
$fileNames = Get-Content -Path $InputFile

# Create each file if it doesn't exist
foreach ($fileName in $fileNames) {
    $fullPath = Join-Path -Path $TargetFolder -ChildPath $fileName.Trim()
    if (-not (Test-Path -Path $fullPath)) {
        New-Item -ItemType File -Path $fullPath -Force | Out-Null
        Write-Host "Created file: $fullPath"
    } else {
        Write-Host "File already exists: $fullPath"
    }
}