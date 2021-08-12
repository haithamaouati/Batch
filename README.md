# Batch

![GitHub repository](https://img.shields.io/badge/haithamaouati-Batch-blue?style=flat-square&logo=github)

Batch Scripting Language

![GitHub Logo](https://github.com/haithamaouati/Batch/blob/main/logo_64x64.png)

This repository is an...

## Table of Contents

- [Introduction](#introduction)
- [Overview](#overview)
- [Environment](#environment)
- [Commands](#commands)
  - [Built-in commands](#built-in-commands)
  - [External commands](#external-commands)
- [Item](#item)
- [Disclaimer](#disclaimer)
- [Contact](#contact)
- [License](#license)

## Introduction

Batch Scripting Language.

## Overview

```batch
@echo off
title script
mode 120,20
color 07
REM Author: Haitham Aouati
REM Social: @haithamaouati
cls

::Go to main function
goto :main

:main
echo Hello world!
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

## Built-in commands

## External commands

## Item

([Table of Contents](#table-of-contents))

## Disclaimer

:warning: We are not responsible for any misuse or damage caused by this program. use this tool at your own risk!

## Contact

Twitter [@haithamaouati](https://twitter.com/haithamaouati)
&nbsp;&middot;&nbsp;
GitHub [@haithamaouati](https://github.com/haithamaouati)

## License

This repository is under [Unlicense License](https://github.com/haithamaouati/Batch/blob/main/LICENSE).
