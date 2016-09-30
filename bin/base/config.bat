for /f "delims=" %%x in (%~dp0config) do (set "%%x")
for /f "delims=" %%x in (..\..\env\%KETTLE_ENV%\env_config) do (set "%%x")