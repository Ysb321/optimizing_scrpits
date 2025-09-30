@echo off
:: 🚀 Make Windows 11 Animations Faster (or Disable)

:: Apply Visual Effects setting
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f

:: Disable animation (MinAnimate = 0)
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f

:: Set Visual Effects to "Best Performance" (no fancy animations)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f

:: Make menus open instantly (default 400ms → now 50ms)
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 50 /f

:: Disable tooltip fade animation
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012008010000000 /f

:: Restart Explorer to apply instantly
taskkill /f /im explorer.exe & start explorer.exe

echo ✅ All animations disabled / faster. Log off or restart for full effect.
pause


echo Registry changes applied successfully.
pause
