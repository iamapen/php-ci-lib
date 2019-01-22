@echo off
set BASE_DIR=%~dp0

set PHP_BIN=C:\xampp-7.2.12-0\php\php.exe
set PHPMD_BIN=C:\projects\phpLib\phpmd-2.6.0\vendor\phpmd\phpmd\src\bin\phpmd

"%PHP_BIN%" "%PHPMD_BIN%" %*
