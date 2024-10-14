:: this program will sort every file in the directory location of itself
@echo off
setlocal enabledelayedexpansion
echo this program will sort every file in the directory location of itself
timeout /t 3
cls
color 07
set "imgfd=%~dp0"
echo sorting %imgfd%
for %%F in ("%imgfd%\*.*") do (
	set "file=%%~nF"
	set "extn=%%~xF"
	echo sorting file !file! as type !extn!
	if /I "!extn!"=="%~x0" echo nevermind, skipping self && goto :skip
	set "extn=!extn:~1!"
	if not exist "%imgfd%\!extn!" mkdir "%imgfd%\!extn!"
	move "%%F" "%imgfd%\!extn!\" > nul
	)
	:skip
timeout /t 3
cls
color 02
echo all files sorted
timeout /t 3
cls
color 0B
echo The ÆL-License.
echo エルライセンス。
echo This software can only and shall only be used by users who participate in feedback for which to help better this product or other products created by the author(s) of this software, 
echo or by users who choose to donate to the creator(s) of this software monetarily, 
echo or set a price and pay to the programmer(s) for a copy of this software outright, sharing limited.
echo Products of software, programs, binaries, hardware, text, and graphics by ÆL are subject to Copyright and or Trademark by ownership of 
echo ÆL, ÆL System(s), ÆL Enterprise Corp.
echo ÆRuSystems, ÆRRorSYSTEM (ErrorSystems) LLC
echo エールシステム LLC
echo ``
echo Created by L, github.com/l-urk, x.com/l_urkk
timeout /t 33 /nobreak
