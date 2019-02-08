@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpspec-3
set PHPSPEC_BIN=%ROOT_DIR%\vendor\phpspec\phpspec\bin\phpspec

"%PHP_BIN%" "%PHPSPEC_BIN%" %*
