# Scheduled Tasks
Scripts that are great candidates for running with your PC's Task Scheduler!

## About The Project
There are countless ways to automate your Windows PC. This project includes my favorite BAT/PowerShell scripts which helps make life a lot easier. Some of them can be used as is whereas others may need to be modified for your needs.

## Scripts

### Organization/Cleaning

[move-old-installers.bat](Batch/move-old-installers.bat): Moves older installers (i.e. exe, msi) that are more than 7 days old from the user's Downloads folder to another sub-directory called 'old-installers'.<br />
**How to Use**:
* Change [DAYS_OLD](https://github.com/arcadespinner/scheduled-tasks/blob/3ffb784b4f14b3100b9700fd0d24a7cb04cfb189/Batch/move-old-installers.bat#L4) to the number of days you consider for a file to be classified as 'old'
* Update [MOVE_DIR](https://github.com/arcadespinner/scheduled-tasks/blob/3ffb784b4f14b3100b9700fd0d24a7cb04cfb189/Batch/move-old-installers.bat#L7) to the directory where older files should be moved to

[clean-temporary-files](Batch/clean-temporary-files.bat): Runs the Disk Cleanup tool and wipes all files/folders that exist in system (%SYSTEMDRIVE%\Windows\Temp\*) and user temporary folders (%USERPROFILE%\AppData\Local\Temp\*).<br />
**How to Use**:
1. Run cleanmgr /SAGESET:112 using the Command Prompt (CMD) first <-- You only need to run this once!
  * Check all the categories of files you want deleted
  * Click 'OK' to save changes
2. Now you can start running [clean-temporary-files.bat](Batch/clean-temporary-files.bat). It will use the Disk Cleanup settings you specified in step 1.

### Network Device Changes/Media Availability

[device-online-plex](Batch/device-online-plex.bat): Checks to see if the PlayStation 5 is online on the network and starts Plex Media Server (if it isn't already running).<br />
**How to Use**:
* Change [PS5](https://github.com/arcadespinner/scheduled-tasks/blob/aa74a4c5d98cd11ad5229d724687a0d31994b251/Batch/device-online-plex.bat#L5) to the IP address of your PlayStation 5 from your LAN or local network.
* Change [PLEX_LOCATION](https://github.com/arcadespinner/scheduled-tasks/blob/aa74a4c5d98cd11ad5229d724687a0d31994b251/Batch/device-online-plex.bat#L8) to the directory where your Plex Media Server is installed.
 * **NOTE**: If you chose to install Plex in its default location, you can skip this step!

[check-for-shared-files](https://github.com/arcadespinner/scheduled-tasks/blob/main/Batch/check-for-shared-files.bat) Checks if any files exist on a shared (or any) path you specify and opens explorer pointed to that path if true.
**How to Use**:
* Change [SHARED_DIR](https://github.com/arcadespinner/scheduled-tasks/blob/aa74a4c5d98cd11ad5229d724687a0d31994b251/Batch/check-for-shared-files.bat#L4) to the (shared) folder you wish to monitor for your needs.

### Back Up

[mysql-backup](https://github.com/arcadespinner/scheduled-tasks/blob/main/Batch/mysql-backup.bat): Uses [mysqldump](https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html) to back up an entire database to a SQL file.
**How to Use**:
* Change [MYSQL_DUMP_PATH](https://github.com/arcadespinner/scheduled-tasks/blob/aa74a4c5d98cd11ad5229d724687a0d31994b251/Batch/mysql-backup.bat#L10) to the location mysqldump.exe utility is stored on your PC.
* Change [BACKUP_PATH](https://github.com/arcadespinner/scheduled-tasks/blob/aa74a4c5d98cd11ad5229d724687a0d31994b251/Batch/mysql-backup.bat#L13) to the directory where you wish to store MySQL DB backups.
* Change [root](https://github.com/arcadespinner/scheduled-tasks/blob/aa74a4c5d98cd11ad5229d724687a0d31994b251/Batch/mysql-backup.bat#L16) to your user and [mysql](https://github.com/arcadespinner/scheduled-tasks/blob/aa74a4c5d98cd11ad5229d724687a0d31994b251/Batch/mysql-backup.bat#L16) to the name of the database you wish to back up.
* When running this script, pass in your password to the database as an argument.
 * I.e. mysql-backup.bat "MyP@$$Word"
