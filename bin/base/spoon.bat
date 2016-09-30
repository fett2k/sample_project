@echo off
setlocal

call "%~dp0config.bat"
call "%~dp0init.bat"

call %KETTLE_DIR%\spoon.bat %*

endlocal