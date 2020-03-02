@echo off
set PATH=%PATH%;C:\php-7.4.3

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpcs-3.x
set BIN_BAT=%ROOT_DIR%\vendor\bin\phpcbf.bat

%BIN_BAT% %*

