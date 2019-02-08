@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phploc-4
set PHPLOC_BIN=%ROOT_DIR%\vendor\phploc\phploc\phploc

"%PHP_BIN%" "%PHPLOC_BIN%" %*
