@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpunit-7
set PHPUNIT_BIN=%ROOT_DIR%\vendor\phpunit\phpunit\phpunit

"%PHP_BIN%" "%PHPUNIT_BIN%" %*
