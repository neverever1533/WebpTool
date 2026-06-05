echo webptool_webp2png.bat starts running.

::check0
@echo off
if not exist dwebp.exe goto alert0
@echo off
if exist dwebp.exe goto check1

:alert0
echo dwebp.exe does not exist.
goto hold

:check1
@echo off
if not exist inWebpFiles.txt goto alert1
@echo off
if exist inWebpFiles.txt goto load

:alert1
echo inWebpFiles.txt does not exist.
echo d:\1.webp > inWebpFiles.txt
echo d:\2.webp >> inWebpFiles.txt
goto hold

:load
for /f "delims=*" %%i in (inWebpFiles.txt) do (
    if not exist %%i (
        echo %%i does not exist.
    )
    if exist %%i (
        dwebp "%%i" -o "%%i.png"
    )
)
goto hold

:hold
echo webptool_webp2png.bat has been closed.
::pause