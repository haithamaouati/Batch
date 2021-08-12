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

## Built-in commands

Command|Description
----|----
ASSOC|Displays or modifies file extension associations.
BREAK|Sets or clears extended CTRL+C checking.
CALL|Calls one batch program from another.
CD|CHDIR Displays or sets the current directory.
CHCP|Displays or sets the active code page number.
[CLS](#cls)|Clears the screen.
[COLOR](#color)|Sets the console foreground and background colors.
COPY|Copies files.
DATE|Displays and sets the system date.
DEL|ERASE	Deletes one or more files.
DIR|Displays a list of files and subdirectories in a directory.
[ECHO](#echo)|Displays messages, or turns command echoing on or off.
ELSE|Performs conditional processing in batch programs when "IF" is not true.
ENDLOCAL|Ends localization of environment changes in a batch file.
EXIT|Quits the CMD.EXE program (command interpreter).
FOR|Runs a specified command for each file in a set of files.
FTYPE|Sets the file type command.
GOTO|Goes to a label.
[IF](#if)|Performs conditional processing in batch programs.
MD|MKDIR Creates a directory.
MOVE|Moves a file to a new location
PATH|Sets or modifies the PATH environment
PAUSE|Causes the command session to pause for user input.
POPD|Changes to the drive and directory popped from the directory stack
PROMPT|Sets or modifies the string displayed when waiting for input.
PUSHD|Pushes the current directory onto the stack, and changes to the new directory.
RD / RMDIR|Removes the directory.
REM|A comment command. Unlike double-colon (::), the command can be executed.
REN / RENAME|Renames a file or directory
SET|Sets or displays shell environment variables
SETLOCAL|Creates a child-environment for the batch file.
SHIFT|Moves the batch parameters forward.
START|Starts a program with various options.
TIME|Displays or sets the system clock
TITLE|Changes the window title
TYPE|Prints the content of a file to the console.
VER|Shows the command processor, operating system versions.
VERIFY|Verifies that file copy has been done correctly.
VOL|Shows the label of the current volume.

### ASSOC
Displays or modifies file extension associations.

### CLS
Clears the screen.

> Examples: Clears the screen.
 ```batch
cls
 ```
 
 ### ECHO
Displays messages, or turns command-echoing on or off.

> Examples: Turns command-echoing on or off.
 ```batch
echo off
 ```
 
> Examples: Displays messages.
 ```batch
echo hell world
 ```
 
 > Examples: New line.
 ```batch
echo.
 ```

### COLOR

Sets the default console foreground and background colors.

Value | Color
----|----
0|Black
1|Blue
2|Green
3|Aqua
1|Red
2|Purple
3|Yellow
7|White
8|Gray
9|Light Blue
A|Light Green
B|Light Aqua
C|Light Red
D|Light Purple
E|Light Yellow
F|Bright White

> Example: Use black background and white foreground.
 ```batch
color 07
 ```
 
### IF

Specifies a three-letter comparison operator, including:

Operator | Description
----|----
EQU|Equal to
NEQ|Not equal to
LSS|Less than
LEQ|Less than or equal to
GTR|Greater than
GEQ|Greater than or equal to

> Examples: To display the message Cannot find data file if the file Product.dat cannot be found, type:
 ```batch
if not exist product.dat echo Cannot find data file
 ```

## External commands

Command|Description
----|----
ARP|text.
[ATTRIB](#attrib)|text.
CHOICE|text.
CIPHER|text.
COMP|text.
CMD|text.
DISKCOPY|text.
DISKPART|text.
DOSKEY|text.
FIND|text.
FINDSTR|text.
HELP|Provides help information for Windows commands.
IPCONFIG|text.
LABEL|text.
MODE|text.
MORE|text.
NET|text.
OPENFILES|text.
PING|text.
REG|text.
REPLACE|text.
SHUTDOWN|text.
SORT|text.
SYSTEMINFO|text.
TASKKILL|text.
TASKLIST|text.
TIMEOUT|text.
TREE|text.
WMIC|text.
XCOPY|text.

### ATTRIB
Displays or changes file attributes.

Value|Description
----|----
+|Sets an attribute.
-|Clears an attribute.
R|Read-only file attribute.
A|Archive file attribute.
S|System file attribute.
H|Hidden file attribute.
O|Offline attribute.
I|Not content indexed file attribute.
X|No scrub file attribute.
V|Integrity attribute.
P|Pinned attribute.
U|Unpinned attribute.
B|SMR Blob attribute. [drive:][path][filename] Specifies a file or files for attrib to process.
/S|Processes matching files in the current folder and all subfolders.
/D|Processes folders as well.
/L|Work on the attributes of the Symbolic Link versus the target of the Symbolic Link

> Examples: Hide readme.txt file.
 ```batch
attrib +h readme.txt
 ```

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
