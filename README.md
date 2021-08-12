# Batch

![GitHub repository](https://img.shields.io/badge/haithamaouati-Batch-blue?style=flat-square&logo=github)

Batch Scripting Language

## Table of Contents

- [Introduction](#introduction)
- [Overview](#overview)
- [Environment](#environment)
- [Commands](#commands)
- [Item](#item)
- [Disclaimer](#disclaimer)
- [Author](#author)
- [License](#license)

## Introduction

Batch Scripting Language.

## Overview

```batch
@echo off
title script
mode 120,30
color 07
REM Author: Haitham Aouati
REM Social: @haithamaouati
cls

::Go to main function
goto :main

:main
pause && cls && :end
goto :eof

:end
choice /c YN /n /t 10 /d Y /m "Do you want exit the program (Y/N)?"
if %errorlevel% equ 1 exit /b
if %errorlevel% equ 2 cls && goto :main
goto :eof
```

## Environment

- Windows 7 / 8 / 8.1 / 10 / 11

## Commands

Command|Uses
----|----
HELP|Provides help information for Windows commands.

## Item

## Disclaimer

:warning: We are not responsible for any misuse or damage caused by this program. use this tool at your own risk!

## Author

Made with ❤️ and **bugs** by [**Haitham Aouati**](https://www.facebook.com/haithamaouati1/)
&nbsp;&middot;&nbsp;
Twitter [@haithamaouati](https://twitter.com/haithamaouati)

([Table of Contents](#table-of-contents))

## License

This repository is under [Unlicense License](https://github.com/haithamaouati/Batch/blob/main/LICENSE).
