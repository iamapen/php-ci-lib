@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\php-cs-fixer-2
set PHP_CS_FIXER_BIN=%ROOT_DIR%\vendor\fabpot\php-cs-fixer\php-cs-fixer

"%PHP_BIN%" "%PHP_CS_FIXER_BIN%" %*
