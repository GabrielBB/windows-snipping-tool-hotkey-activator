Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\windows.immersivecontrolpanel_cw5n1h2txyewy /v Disabled /t REG_DWORD /d 1 /f
Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\windows.immersivecontrolpanel_cw5n1h2txyewy /v DisabledByUser /t REG_DWORD /d 1 /f

SET HotKey=”ALT+CTRL+P”

echo Set oWS = WScript.CreateObject(“WScript.Shell”) > CreateShortcut.vbs
echo sLinkFile = “%HOMEDRIVE%%HOMEPATH%\Desktop\Snip And Sketch Shortcut.lnk” >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs

echo oLink.TargetPath = “%SYSTEMROOT%\explorer.exe” >> CreateShortcut.vbs
echo oLink.Arguments = “ms-screenclip:” >> CreateShortcut.vbs
echo oLink.HotKey = %HotKey% >> CreateShortcut.vbs
echo oLink.Description = “Created by @GabrielBB” >> CreateShortcut.vbs

echo oLink.Save >> CreateShortcut.vbs

cscript CreateShortcut.vbs
del CreateShortcut.vbs

pause
