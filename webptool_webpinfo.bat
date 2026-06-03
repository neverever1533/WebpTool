@echo off
if exist webpinfo.exe goto load
@echo off
if not exist webpinfo.exe goto alert0

:alert0
echo webpinfo.exe does not exist
goto hold

:ready
@echo off
if exist inWebpmuxFiles.txt goto load
@echo off
if not exist inWebpmuxFiles.txt goto alert1

:alert1
echo inWebpmuxFiles.txt does not exist
echo d:\1.webp > inWebpmuxFiles.txt
goto hold

:load
for /f "delims=*" %%i in (inWebpmuxFiles.txt) do (
    if exist %%i (
        webpinfo -summary %%i
        echo %%i
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