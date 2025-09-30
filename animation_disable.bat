@echo off
cls
echo ==========================================
echo    Windows 11 Performance Tweaks
echo ==========================================
echo.


:: Disable Windows animations (for speed boost)
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012008010000000 /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f

echo [✓] Performance tweaks applied! Restart PC.
pause
