echo webptool_webpmux_list.bat starts running.
@echo off
setlocal enabledelayedexpansion

::check0
::echo l0
@echo off
if not exist webptool_webpinfo.bat goto alert0
@echo off
if exist webptool_webpinfo.bat call webptool_webpinfo.bat
goto load

:alert0
echo webptool_webpinfo.bat does not exist.
goto hold

:load
::echo lload
for /f "delims=*" %%i in (inWebpmuxFiles.txt) do (
    if not exist %%i (
        echo %%i does not exist.
    )
    if exist %%i (
        if not exist %%i.txt (
            echo %%i.txt does not exist.
        )
        if exist %%i.txt (
            set frames=1
            set duration=0
            for /f "tokens=1-4 delims=: " %%j in (%%i.txt) do (
                if "%%j"=="Number" (
                    if "%%l"=="frames" (
                        ::echo frames:%%m
                        set frames=%%m
                    )
                )
                if "%%j"=="Duration" (
                    ::echo duration:%%k
                    set duration=%%k
                )
            )
            echo %%i,!frames!,!duration! >> inWebpmuxFrames.txt
            ::echo WEBP information has been recorded, deleted webp information files.
            del %%i.txt
        )
    )
)
goto hold

:hold
echo webptool_webpmux_list.bat has been closed.
::pause