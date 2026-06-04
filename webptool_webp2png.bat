@echo off
if not exist dwebp.exe goto alert0
@echo off
if exist dwebp.exe goto ready

:alert0
echo dwebp.exe does not exist
goto hold

:ready
@echo off
if not exist inWebpFiles.txt goto alert1
@echo off
if exist inWebpFiles.txt goto load

:alert1
echo inWebpFiles.txt does not exist
echo d:\1.webp > inWebpFiles.txt
echo d:\2.webp >> inWebpFiles.txt
goto hold

:load
for /f "delims=*" %%i in (inWebpFiles.txt) do (
    if not exist %%i (
        echo %%i does not exist
        goto hold
    )
    if exist %%i (
        dwebp "%%i" -o "%%i.png"
    )
)

:hold
echo Touch any key to continue.
pause

:end
exit