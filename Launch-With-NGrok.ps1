$webServerProcess = Start-Process -FilePath "dotnet" -ArgumentList "run" -PassThru
Write-Host "Web Server PID: $($webServerProcess.Id)"


$nGrokProcess = Start-Process -FilePath "ngrok" -ArgumentList "http https://localhost:7066" -PassThru
Write-Host "NGrok PID: $($nGrokProcess.Id)"