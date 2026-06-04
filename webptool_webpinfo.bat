:check0
@echo off
if not exist webpinfo.exe goto alert0
@echo off
if exist webpinfo.exe goto check1

:alert0
echo webpinfo.exe does not exist.
goto hold

:check1
@echo off
if not exist inWebpmuxFiles.txt goto alert1
@echo off
if exist inWebpmuxFiles.txt goto load

:alert1
echo inWebpmuxFiles.txt does not exist.
echo d:\1.webp > inWebpmuxFiles.txt
echo d:\2.webp >> inWebpmuxFiles.txt
goto hold

:load
for /f "delims=*" %%i in (inWebpmuxFiles.txt) do (
    if not exist %%i (
        echo %%i does not exist.
        goto continue
    )
    if exist %%i (
        webpinfo -summary %%i
        echo %%i
    )
    :continue
) > %%i.txt

:hold
echo Touch any key to continue.
pause

:end
exit