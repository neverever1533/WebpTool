@echo off
if exist dwebp.exe goto ready
@echo off
if not exist dwebp.exe goto alert0

:alert0
echo dwebp.exe does not exist
goto hold

:ready
@echo off
if exist inWebpFiles.txt goto load
@echo off
if not exist inWebpFiles.txt goto alert1

:alert1
echo inWebpFiles.txt does not exist
echo d:\1.webp > inWebpFiles.txt
echo d:\2.webp >> inWebpFiles.txt
goto hold

:load
for /f "delims=*" %%i in (inWebpFiles.txt) do (
    if exist %%i (
        dwebp "%%i" -o "%%i.png"
    )
    if not exist %%i (
        echo %%i does not exist
        goto hold
    )
)

:hold
echo Touch any key to continue.
pause

:end
exit