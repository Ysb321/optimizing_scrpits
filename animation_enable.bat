@echo off
echo Restoring Windows 11 animation defaults...

:: Restore UserPreferencesMask to default (animations ON)
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f

:: Restore MinAnimate to default (1 = enabled)
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f

echo [✓] Windows animation settings restored!
pause
