@ECHO OFF
IF EXIST webpinfo.exe GOTO load
@ECHO OFF
IF NOT EXIST webpinfo.exe GOTO alert0

:alert0
ECHO webpinfo.exe DOES NOT EXIST
GOTO hold

:ready
@ECHO OFF
IF EXIST inWebpmuxFiles.txt GOTO load
@ECHO OFF
IF NOT EXIST inWebpmuxFiles.txt GOTO alert1

:alert1
ECHO inWebpmuxFiles.txt DOES NOT EXIST
ECHO D:\1.webp > inWebpmuxFiles.txt
ECHO D:\2.webp >> inWebpmuxFiles.txt
GOTO hold

:load
for /f "delims=*" %%i in (inWebpmuxFiles.txt) do (
    IF EXIST %%i (
        ECHO %%i
        webpinfo -quiet -summary %%i
    )
    IF NOT EXIST %%i (
        ECHO %%i DOES NOT EXIST
        GOTO hold
    )
)

:hold
ECHO touch any key to continue.
PAUSE

:end
EXIT