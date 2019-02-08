@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpstan
set PHPSTAN_BIN=%ROOT_DIR%\vendor\phpstan\phpstan\bin\phpstan

"%PHP_BIN%" "%PHPSTAN_BIN%" %*
