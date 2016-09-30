@echo off
setlocal

call "%~dp0config.bat"
call "%~dp0init.bat"

set arg1=%1
set arg2=%2
shift
shift
call %KETTLE_DIR%\kitchen.bat /rep=%KETTLE_REPO% /level=%KETTLE_LOG_LEVEL% /dir=%arg1% /job=%arg2% %*