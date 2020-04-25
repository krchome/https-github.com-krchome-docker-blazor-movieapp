do {
  Write-Host "waiting..."
  sleep 3      
} until(Test-NetConnection db -Port 1433 | ? { $_.TcpTestSucceeded } )

dotnet BlazorMovieApp.dll