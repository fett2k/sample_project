@echo off
setlocal

call "%~dp0config.bat"
call "%~dp0init.bat"

call %KETTLE_DIR%\pan.bat /rep=%KETTLE_REPO% /level=%KETTLE_LOG_LEVEL% /dir=%arg1% /job=%arg2% %*
