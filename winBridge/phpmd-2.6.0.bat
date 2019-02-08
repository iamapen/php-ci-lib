@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpmd-2.6.0
set PHPMD_BIN=%ROOT_DIR%\vendor\phpmd\phpmd\src\bin\phpmd

"%PHP_BIN%" "%PHPMD_BIN%" %*

