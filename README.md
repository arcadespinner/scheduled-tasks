# Scheduled Tasks
Scripts that are great candidates for running with your PC's Task Scheduler!

## About The Project
There are countless ways to automate your Windows PC. This project includes my favorite BAT/PowerShell scripts which helps make life a lot easier. Some of them can be used as is whereas others may need to be modified for your needs.

## Scripts

### Organization/Cleaning

[move-old-installers.bat](Batch/move-old-installers.bat): Moves older installers (i.e. exe, msi) that are more than 7 days old from the user's Downloads folder to another sub-directory called 'old-installers'.

[clean-temporary-files](Batch/clean-temporary-files.bat): Runs the Disk Cleanup tool and wipes all files/folders that exist in system (%SYSTEMDRIVE%\Windows\Temp\*) and user temporary folders (%USERPROFILE%\AppData\Local\Temp\*).
