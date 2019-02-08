@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\xampp-7.1.21-0\php\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpunit-3
set PHPUNIT_BIN=%ROOT_DIR%\vendor\phpunit\phpunit\composer\bin\phpunit

"%PHP_BIN%" "%PHPUNIT_BIN%" %*
