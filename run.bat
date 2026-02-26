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
echo Compiling LaTexv - First round
echo ----------------------------------------
pdflatex -output-directory=%OUTDIR% %MAIN%.tex
if errorlevel 1 goto :error

echo ----------------------------------------
echo Bibliography elaboration with biber
echo ----------------------------------------
biber --input-directory %OUTDIR% --output-directory %OUTDIR% %MAIN%
if errorlevel 1 goto :error

echo ----------------------------------------
echo Generating glorrary with MakeGlossaries
echo ----------------------------------------
makeglossaries -d %OUTDIR% %MAIN%
if errorlevel 1 goto :error

echo ----------------------------------------
echo Compiling LaTeX - Second round
echo ----------------------------------------
pdflatex -output-directory=%OUTDIR% %MAIN%.tex
if errorlevel 1 goto :error

echo ----------------------------------------
echo Compiling LaTeX - Third round = security check
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
echo.
pause
