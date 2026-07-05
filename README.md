# Cyber Fortune Teller

A beginner-friendly PowerShell script built on macOS that asks the user a few questions and generates a random cyber-themed character report.

## Project Overview

This script is a fun PowerShell project designed to practice basic scripting skills while making something interactive. The user answers a few questions, and the script responds with a randomly generated cyber class, security score, and fortune.

## Features

- Prompts the user for their name
- Asks how they are feeling
- Asks them to choose a favorite IT tool
- Randomly generates a cyber class
- Randomly generates a security score
- Displays a random cyber fortune

## Script

```powershell
Clear-Host

$name = Read-Host "What is your name"
$mood = Read-Host "How are you feeling today"
$tool = Read-Host "Pick an IT tool: PowerShell, Python, Wireshark, Excel"

$fortunes = @(
    "You will fix a problem by restarting it.",
    "A suspicious email will test you today.",
    "The printer will be your enemy.",
    "Your Wi-Fi will survive another day.",
    "Someone will say the internet is down when it is only one website."
)

$classes = @(
    "Help Desk Hero",
    "IAM Wizard",
    "SOC Detective",
    "PowerShell Rookie",
    "Cyber Guardian"
)

$fortune = Get-Random -InputObject $fortunes
$class = Get-Random -InputObject $classes
$score = Get-Random -Minimum 50 -Maximum 101

Write-Host ""
Write-Host "===== CYBER CHARACTER REPORT =====" -ForegroundColor Cyan
Write-Host "Name: $name" -ForegroundColor Green
Write-Host "Mood: $mood" -ForegroundColor Yellow
Write-Host "Favorite Tool: $tool" -ForegroundColor Magenta
Write-Host "Cyber Class: $class" -ForegroundColor Cyan
Write-Host "Security Score: $score / 100" -ForegroundColor Green
Write-Host ""
Write-Host "Cyber Fortune: $fortune" -ForegroundColor White
Write-Host "==================================" -ForegroundColor Cyan
