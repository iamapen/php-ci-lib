@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpdox
set PHPDOX_BIN=%ROOT_DIR%\vendor\theseer\phpdox\phpdox

"%PHP_BIN%" "%PHPDOX_BIN%" %*
