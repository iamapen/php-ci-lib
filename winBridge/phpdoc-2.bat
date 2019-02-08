@echo off
setlocal

if not defined PHP_BIN (
  set PHP_BIN=C:\php-7.3.2\php.exe
)

set BASE_DIR=%~dp0
set ROOT_DIR=%BASE_DIR%..\phpdoc-2
set PHPDOC_BIN=%ROOT_DIR%\vendor\phpdocumentor\phpdocumentor\bin\phpdoc.php

"%PHP_BIN%" "%PHPDOC_BIN%" %*
