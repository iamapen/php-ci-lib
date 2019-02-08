@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpcb-2
set PHPCB_BIN=%ROOT_DIR%\vendor\mayflower\php-codebrowser\bin\phpcb

"%PHP_BIN%" "%PHPCB_BIN%" %*
