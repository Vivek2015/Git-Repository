@echo off

@title Utility tool for arranging the files
:menu
cls
echo --------------------------------------------------------------------------------
echo File Segregation Utility
echo --------------------------------------------------------------------------------
echo.
echo Select a tool
echo =============
echo.
echo [1] Move WORD Files
echo [2] Move TEXT Files
echo [3] Move EXCEL Files
echo [4] Move PPT Files
echo [5] Move PDF Files
echo [6] Exit
echo.
set /p op=Run:
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto 5
if %op%==6 goto exit
goto error
:1
cls
echo --------------------------------------------------------------------------------
echo Move WORD Files
echo --------------------------------------------------------------------------------
echo.
echo Moving WORD Files to Directory "WORD"...
@Robocopy "%userprofile%\Desktop" "%userprofile%\Desktop\WORD" *.doc *.docx *.dotx *.dotm /MOV
cls
echo --------------------------------------------------------------------------------
echo Move WORD Files
echo --------------------------------------------------------------------------------
echo.
echo WORD files Sucessfully moved.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:2
cls
echo --------------------------------------------------------------------------------
echo Move TEXT Files
echo --------------------------------------------------------------------------------
echo.
echo Moving TEXT Files to Directory "TEXT"...
@Robocopy "%userprofile%\Desktop" "%userprofile%\Desktop\TEXT" *.txt /MOV
cls
echo --------------------------------------------------------------------------------
echo Move TEXT Files
echo --------------------------------------------------------------------------------
echo.
echo TEXT files Sucessfully moved.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:3
cls
echo --------------------------------------------------------------------------------
echo Move EXCEL Files
echo --------------------------------------------------------------------------------
echo.
echo Moving TEXT Files to Directory "EXCEL"...
@Robocopy "%userprofile%\Desktop" "%userprofile%\Desktop\EXCEL" *.xlsx *.xlsm *.xls *.xml *.xlam *.xlt *.xltx *.xlsb *.csv *.ods /MOV
cls
echo --------------------------------------------------------------------------------
echo Move EXCEL Files
echo --------------------------------------------------------------------------------
echo.
echo EXCEL files Sucessfully moved.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:4
cls
echo --------------------------------------------------------------------------------
echo Move POWERPOINT Files
echo --------------------------------------------------------------------------------
echo.
echo Moving PPT Files to Directory "PPT"...
@Robocopy "%userprofile%\Desktop" "%userprofile%\Desktop\PPT" *.ppt *.pot *.pps /MOV
cls
echo --------------------------------------------------------------------------------
echo Move POWERPOINT Files
echo --------------------------------------------------------------------------------
echo.
echo PPT files Sucessfully moved.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:5
cls
echo --------------------------------------------------------------------------------
echo Move PDF Files
echo --------------------------------------------------------------------------------
echo.
echo Moving PDF Files to Directory "PDF"...
@Robocopy "%userprofile%\Desktop" "%userprofile%\Desktop\PDF" *.pdf *.pdm /MOV
cls
echo --------------------------------------------------------------------------------
echo Move PDF Files
echo --------------------------------------------------------------------------------
echo.
echo PDF files Sucessfully moved.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:error
cls
echo Command not recognized.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
echo Existing files in your Desktop..
echo --------------------------------------------------------------------------------
Dir %userprofile%\Desktop /B
goto menu
:exit


echo Thanks for using File Segrigation Utility by Vivek
exit