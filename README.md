# Scheduled Tasks
Scripts that are great candidates for running with your PC's Task Scheduler!

## About The Project
There are countless ways to automate your Windows PC. This project includes my favorite BAT/PowerShell scripts which helps make life a lot easier. Some of them can be used as is whereas others may need to be modified for your needs.

## Scripts

### Organization/Cleaning

[move-old-installers.bat](Batch/move-old-installers.bat): Moves older installers (i.e. exe, msi) that are more than 7 days old from the user's Downloads folder to another sub-directory called 'old-installers'.
**How to Use**:
* Change [DAYS_OLD](https://github.com/arcadespinner/scheduled-tasks/blob/3ffb784b4f14b3100b9700fd0d24a7cb04cfb189/Batch/move-old-installers.bat#L4) to the number of days you consider for a file to be classified as 'old'
* Update [MOVE_DIR](https://github.com/arcadespinner/scheduled-tasks/blob/3ffb784b4f14b3100b9700fd0d24a7cb04cfb189/Batch/move-old-installers.bat#L7) to the directory where older files should be moved to

[clean-temporary-files](Batch/clean-temporary-files.bat): Runs the Disk Cleanup tool and wipes all files/folders that exist in system (%SYSTEMDRIVE%\Windows\Temp\*) and user temporary folders (%USERPROFILE%\AppData\Local\Temp\*).
** How to Use **:
1. Run cleanmgr /SAGESET:112 using the Command Prompt (CMD) first <-- You only need to run this once!
  * Check all the categories of files you want deleted
  * Click 'OK' to save changes
2. Now you can start running [clean-temporary-files.bat](Batch/clean-temporary-files.bat). It will use the Disk Cleanup settings you specified in step 1.
