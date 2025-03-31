$freerdpUrl = "https://pub.freerdp.com/releases/latest/freerdp-windows.zip"
$freerdpZip = "freerdp.zip"
$freerdpFolder = "C:\FreeRDP"

# تنزيل FreeRDP
Write-Output "Downloading FreeRDP..."
Invoke-WebRequest -Uri $freerdpUrl -OutFile $freerdpZip

# استخراج الملفات
Write-Output "Extracting FreeRDP..."
Expand-Archive -Path $freerdpZip -DestinationPath $freerdpFolder -Force

# التحقق من المسار الصحيح
$installedPath = Join-Path $freerdpFolder "freerdp\wfreerdp.exe"
Write-Output "Installed path: $installedPath"

# التحقق من التثبيت
Write-Output "Verifying installation..."
if (Test-Path $installedPath) {
    Write-Output "FreeRDP installed successfully!"
} else {
    Write-Error "Installation failed!"
}
