@ECHO OFF
IF EXIST dwebp.exe GOTO ready
@ECHO OFF
IF NOT EXIST dwebp.exe GOTO alert0

:alert0
ECHO dwebp.exe DOES NOT EXIST
GOTO hold

:ready
@ECHO OFF
IF EXIST inWebpFiles.txt GOTO load
@ECHO OFF
IF NOT EXIST inWebpFiles.txt GOTO alert1

:alert1
ECHO inWebpFiles.txt DOES NOT EXIST
ECHO D:\1.webp > inWebpFiles.txt
ECHO D:\2.webp >> inWebpFiles.txt
GOTO hold

:load
for /f "delims=*" %%i in (inWebpFiles.txt) do (
    IF EXIST %%i (
        dwebp "%%i" -o "%%i.png"
    )
    IF NOT EXIST %%i (
        ECHO %%i DOES NOT EXIST
        GOTO hold
    )
)

:hold
ECHO Touch any key to continue.
PAUSE

:end
EXIT