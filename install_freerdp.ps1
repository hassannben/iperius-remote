$freerdpUrl = "https://pub.freerdp.com/releases/latest/freerdp-windows.zip"
$freerdpZip = "freerdp.zip"
$freerdpFolder = "C:\FreeRDP"

# تنزيل FreeRDP
Write-Output "Downloading FreeRDP..."
Invoke-WebRequest -Uri $freerdpUrl -OutFile $freerdpZip

# استخراج الملفات
Write-Output "Extracting FreeRDP..."
Expand-Archive -Path $freerdpZip -DestinationPath $freerdpFolder -Force

# التحقق من التثبيت
Write-Output "Verifying installation..."
if (Test-Path "$freerdpFolder\wfreerdp.exe") {
    Write-Output "FreeRDP installed successfully!"
} else {
    Write-Error "Installation failed!"
}
