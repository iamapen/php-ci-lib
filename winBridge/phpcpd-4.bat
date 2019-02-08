@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpcpd-4
set PHPCPD_BIN=%ROOT_DIR%\vendor\sebastian\phpcpd\phpcpd

"%PHP_BIN%" "%PHPCPD_BIN%" %*
