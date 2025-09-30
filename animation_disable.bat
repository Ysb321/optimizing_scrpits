@echo off
:: 🔄 Restore Windows 11 Default Animation & Visual Effects Settings (By Yashraj)

:: Set Visual Effects back to "Let Windows choose what's best"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 0 /f

:: Enable window minimize/maximize animation (default = 1)
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f

:: Restore default menu show delay (400 ms)
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 400 /f

:: Restore tooltip fade and other default effects
:: (Default UserPreferencesMask value for fresh Windows 11 = 9e 1e 07 80 12 00 00 00)
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9e1e078012000000 /f

:: Restart Explorer to apply changes
taskkill /f /im explorer.exe & start explorer.exe

echo ✅ Windows animation settings restored to default. 
echo 🔁 Please log off or restart for full effect.
pause
