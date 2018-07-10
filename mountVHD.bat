@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
title MountVHD
set VHDflie=YourVHDFilePath
echo select vdisk file=%VHDflie% > dpset.txt
echo attach vdisk >> dpset.txt
diskpart /s dpset.txt
del /f /q dpset.txt
echo Successed...
pause