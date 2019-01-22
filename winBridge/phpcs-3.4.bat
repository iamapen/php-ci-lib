@echo off
set BASE_DIR=%~dp0
set ROOT_DIR=C:\projects\phpLib\phpcs-3.4.0

set PHP_BIN=C:\xampp-7.2.12-0\php\php.exe
set PHPCS_BIN=%ROOT_DIR%\vendor\squizlabs\php_codesniffer\bin\phpcs

"%PHP_BIN%" -d auto_append_file="" -d auto_prepend_file="" -f "%PHPCS_BIN%" -- %*
