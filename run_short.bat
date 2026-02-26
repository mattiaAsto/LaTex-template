@echo off
REM ============================================================
REM  LaTeX build script con with separate folder for temp files
REM  and copy of the PDF file in the main folder
REM ============================================================

set MAIN=00_main
set OUTDIR=build

REM Create the folder if non existing
if not exist %OUTDIR% mkdir %OUTDIR%

echo ----------------------------------------
echo Compiling LaTexv - Quick compilation
echo ----------------------------------------
pdflatex -output-directory=%OUTDIR% %MAIN%.tex
if errorlevel 1 goto :error

echo ----------------------------------------
echo Copy PDF file out of the %OUTDIR% folder
echo ----------------------------------------
copy /Y "%OUTDIR%\%MAIN%.pdf" "%MAIN%.pdf"
if errorlevel 1 goto :error

echo.
echo Compiling succesful!
echo PDF finale: %MAIN%.pdf
goto :end

:error
echo.
echo Error during compilation.
pause

:end
exit 0
