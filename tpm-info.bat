@echo off
:start
cls

powershell -Command ^
    "$ekSha256 = (Get-TpmEndorsementKeyInfo -Hash sha256).PublicKeyHash;" ^
    "$ekSha256Bytes = [System.Text.Encoding]::UTF8.GetBytes($ekSha256);" ^
    "$sha1 = [System.BitConverter]::ToString((New-Object System.Security.Cryptography.SHA1CryptoServiceProvider).ComputeHash($ekSha256Bytes)).Replace('-', '').ToLower();" ^
    "$md5 = [System.BitConverter]::ToString((New-Object System.Security.Cryptography.MD5CryptoServiceProvider).ComputeHash($ekSha256Bytes)).Replace('-', '').ToLower();" ^
    "Write-Host 'MD5:    ' $md5;" ^
    "Write-Host 'SHA1:   ' $sha1;" ^
    "Write-Host 'SHA256: ' $ekSha256.ToLower();"

echo.
echo Press any key to refresh.
pause>nul
goto start
