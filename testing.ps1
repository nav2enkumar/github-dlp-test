try {
    $PublicIP = Invoke-RestMethod -Uri "https://api64.ipify.org?format=text"
    Write-Output "Your Public IP Address is: $PublicIP"
} catch {
    Write-Output "Failed to retrieve public IP. Check your internet connection."
}
