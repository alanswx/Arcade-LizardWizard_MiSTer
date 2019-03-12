@echo off

set    zip=lizwiz.zip
set ifiles=6e.cpu+6f.cpu+6h.cpu+6j.cpu+wiza+wizb+wiza+wizb+5e.cpu+5f.cpu+5e.cpu+5f.cpu+82s126.1m+4a.cpu+82s126.3m+7f.cpu)

set  ofile=a.lizwiz.rom

rem =====================================
setlocal ENABLEDELAYEDEXPANSION

set pwd=%~dp0
echo.
echo.

if EXIST %zip% (

	!pwd!7za x -otmp %zip%
	if !ERRORLEVEL! EQU 0 ( 
		cd tmp

		copy /b/y %ifiles% !pwd!%ofile%
		if !ERRORLEVEL! EQU 0 ( 
			echo.
			echo ** done **
			echo.
			echo Copy "%ofile%" into root of SD card
		)
		cd !pwd!
		rmdir /s /q tmp
	)

) else (

	echo Error: Cannot find "%zip%" file
	echo.
	echo Put "%zip%", "7za.exe" and "%~nx0" into the same directory
)

echo.
echo.
pause
