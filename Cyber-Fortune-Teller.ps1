Clear-Host

# Cyber Fortune Teller
$fortunes = @(
    "A firewall in your future will save you from disaster.",
    "Beware of suspicious links. One click can change everything.",
    "Your next password will be strong, unique, and impossible to guess.",
    "A system update ignored today may haunt you tomorrow.",
    "Fortune favors the analyst who checks the logs twice.",
    "An unexpected phishing email is closer than you think.",
    "Your cyber instincts will soon prove correct.",
    "A hidden vulnerability will reveal itself to the patient eye.",
    "Soon you will troubleshoot a problem that others could not solve.",
    "Luck is on your side, but MFA is still recommended.",
    "The command line holds answers the GUI cannot provide.",
    "A future in cybersecurity begins with curiosity and consistency."
)

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "        WELCOME TO CYBER FORTUNE TELLER   " -ForegroundColor Green
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

$name = Read-Host "Enter your name"

Write-Host ""
Write-Host "Greetings, $name..." -ForegroundColor Yellow
Start-Sleep -Seconds 1
Write-Host "Consulting the cyber universe..." -ForegroundColor Magenta
Start-Sleep -Seconds 2
Write-Host ""

$fortune = Get-Random -InputObject $fortunes

Write-Host "🔮 Your Cyber Fortune:" -ForegroundColor Cyan
Write-Host "$fortune" -ForegroundColor White
Write-Host ""

$choice = Read-Host "Would you like another fortune? (Y/N)"

while ($choice -match "^[Yy]$") {
    Write-Host ""
    Write-Host "Scanning the digital stars..." -ForegroundColor Magenta
    Start-Sleep -Seconds 2
    $fortune = Get-Random -InputObject $fortunes
    Write-Host ""
    Write-Host "🔮 Your Cyber Fortune:" -ForegroundColor Cyan
    Write-Host "$fortune" -ForegroundColor White
    Write-Host ""
    $choice = Read-Host "Would you like another fortune? (Y/N)"
}

Write-Host ""
Write-Host "Stay secure, $name. May your logs be clean and your passwords strong." -ForegroundColor Green
Write-Host ""
