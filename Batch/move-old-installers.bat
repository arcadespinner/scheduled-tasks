@echo off

REM Days for how old the files should be when being considered for moving
SET DAYS_OLD=7

REM Directory where older installers will be moved to
SET MOVE_DIR="%USERPROFILE%\Downloads\old-installers"

REM Ensure folder exists where we will dump old installers (if not, create it)
IF NOT EXIST %MOVE_DIR% mkdir %MOVE_DIR%

REM Move all installer files from downloads to the folder indicated above
for %%E in (.exe, .msi) do (
  for /f "delims=" %%F in ('forfiles /p "%USERPROFILE%\Downloads" /d -%DAYS_OLD% /s /m *%%E /c "cmd /c echo @path"') do (
	move "%%F" "%MOVE_DIR%"
  )
)