###
# To run from CMD, use the following command:
# PowerShell.exe -command "C:\path-of-folder\zip-logs.ps1"
###

# Since this command is meant to be run during the 1st of every month,
# let's first determine the previous month in MM-yyyy format
$lastMonth = (Get-Date).AddMonths(-1).ToString("MM-yyyy")

# Set the path for the directory where the log files are stored
$logDir = "$env:USERPROFILE\downloads"

# Set the path for where the output archive will be dropped
$outputDir = "$env:USERPROFILE\downloads\old-logs"

# The file types that should be included in the archive
$fileExt = "*.log"

# Build the command using the Compress-Archive syntax
# NOTE: Path can be comma-separated for matching multiple files and types
# I.e. Path = "C:\*.txt", "C:\*.jpg"
$compress = @{	
  Path = "$logDir\$fileExt"
  CompressionLevel = "Fastest"
  DestinationPath = "$outputDir\$lastMonth.zip"
}

# Compress files and create the archived zip
Compress-Archive @compress

# Delete those files after archival
Get-ChildItem -Path $logDir -File -Include $fileExt -Recurse | Remove-Item -Force