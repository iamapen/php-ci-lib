@echo off
set PATH=%PATH%;C:\php-7.3.2

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\php-cs-fixer-2.x
set BIN_BAT=%ROOT_DIR%\vendor\bin\php-cs-fixer.bat

%BIN_BAT% %*

