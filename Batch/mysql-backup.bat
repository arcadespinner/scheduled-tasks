@echo off

REM Ensure a password was passed in
if [%1]==[] goto :noArgs

REM Retrieve the date/time
for /f "usebackq" %%x in (`powershell "(Get-Date).ToString('MM.dd.yyyy.HH.mm.ss.tt')"`) do set BACKUP_TIME=%%x

REM Set the location of where the mysqldump executable is located
SET MYSQL_DUMP_PATH="C:/Development/Laragon/bin/mysql/mysql-5.1.72-win32/bin/mysqldump.exe"

REM Set the location of where the backups should be dumped
SET BACKUP_PATH="E:/MySQL Backups/capturedb/%BACKUP_TIME%.sql"

REM Perform the back-up
%MYSQL_DUMP_PATH% -h localhost -u root -p"%1" mysql --routines=true > %BACKUP_PATH%

REM Exit gracefully
exit

REM This is hit when no password was passed in
:noArgs
echo The password to the database was not supplied.
exit /B