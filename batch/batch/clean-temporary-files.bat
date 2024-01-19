@echo off

REM ----- NOTE!!
REM Run cleanmgr /SAGESET:112 (prior to this to set up a config for cleaning)
REM ----- NOTE!!

REM Runs the disk clean-up tool using the config provided previously
cleanmgr /SAGERUN:112

REM Deletes all files in the system & user temp directories
REM Q parameter means you won't be prompted for any delete confirmations
REM F parameter forces deletion of read-only files
REM S parameter deletes files recursively (current dir and subdirectories)
del /q/f/s %SYSTEMDRIVE%\Windows\Temp\* > nul 2> nul
del /q/f/s %USERPROFILE%\AppData\Local\Temp\* nul 2> nul