@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\behat-3
set BEHAT_BIN=%ROOT_DIR%\vendor\behat\behat\bin\behat

"%PHP_BIN%" "%BEHAT_BIN%" %*
