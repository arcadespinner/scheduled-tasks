@echo off

REM Specify the location of the shared folder/drive
SET SHARED_DIR="D:\Shared"

REM Check to see if anything exists in the shared folder
dir /b /s /a %SHARED_DIR% | findstr .>nul && (
  REM Open the folder in Explorer (since something exists)
  start %windir%\explorer.exe %SHARED_DIR%
)