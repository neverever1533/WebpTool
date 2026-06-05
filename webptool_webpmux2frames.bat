echo webptool_webpmux2frames.bat starts running.

::check0
::echo f0
@echo off
if not exist webpmux.exe goto alert0
@echo off
if exist webpmux.exe goto check1

:alert0
echo webpmux.exe does not exist.
goto hold

:check1
::echo f1
@echo off
if not exist webptool_webpmux_list.bat goto alert1
@echo off
if exist webptool_webpmux_list.bat call webptool_webpmux_list.bat
goto check2

:alert1
echo webptool_webpmux_list.bat does not exist.
goto hold

:check2
::echo f2
@echo off
if not exist inWebpmuxFrames.txt goto alert2
@echo off
if exist inWebpmuxFrames.txt goto load

:alert2
echo inWebpmuxFrames.txt does not exist.
echo d:\1.webp,1,0 > inWebpmuxFrames.txt
echo d:\2.webp,1,0 >> inWebpmuxFrames.txt
goto hold

:load
::echo fload
for /f "tokens=1,2,3 delims=," %%i in (inWebpmuxFrames.txt) do (
    ::echo file:%%i
    if not exist %%i (
        echo %%i does not exist.
    )
    if exist %%i (
        ::echo frame:%%j
        ::echo duration:%%k
        for /l %%n in (0,1,%%j) do (
            ::echo %%n
            webpmux -get frame %%n "%%i" -o "%%i_%%n.webp"
            echo %%i_%%n.webp >> inWebpFiles.txt
        )
    )
)
goto check3

:check3
::echo f3
@echo off
if not exist webptool_webp2png_remove.bat goto alert3
@echo off
if exist webptool_webp2png_remove.bat call webptool_webp2png_remove.bat
goto hold

:alert3
echo webptool_webp2png_remove.bat does not exist.
goto hold

:hold
echo webptool_webpmux2frames.bat has been closed.
pause

:end
exit