@echo off
set PATH=%PATH%;C:\php-7.4.3

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpmd-2.x
set BIN_BAT=%ROOT_DIR%\vendor\bin\phpmd.bat

%BIN_BAT% %*

