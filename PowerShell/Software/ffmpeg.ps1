# Copyright (C) 2023 TroubleChute (Wesley Pyburn)
# Licensed under the GNU General Public License v3.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.gnu.org/licenses/gpl-3.0.en.html
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#    
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#    
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# ----------------------------------------
# This script lets you install AutoGPT in an even faster, easier way.
# The installation is already super simple, but this is next-level.
# This script:
# 1. Install Chocolatey
# 2. Install FFMPEG
# ----------------------------------------

Write-Host "Welcome to TroubleChute's FFMPEG installer!" -ForegroundColor Cyan
Write-Host "Chocolatey [package manager] and FFMPEG will now be installed..." -ForegroundColor Cyan
Write-Host "[Version 2023-05-19]`n`n" -ForegroundColor Cyan

# 1. Install Chocolatey
Write-Host "`nInstalling Chocolatey..." -ForegroundColor Cyan
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# 2. Install FFMPEG using Chocolatey
Write-Host "Which FFMPEG would you like to install?" -ForegroundColor Cyan
Write-Host -NoNewline "- FFMPEG: " -ForegroundColor Red
Write-Host "1" -ForegroundColor Green
Write-Host -NoNewline "- FFMPEG-Shared: " -ForegroundColor Red
Write-Host "2" -ForegroundColor Green
Write-Host -NoNewline "- FFMPEG-Full [This has the most codecs]: " -ForegroundColor Red
Write-Host "3" -ForegroundColor Green

$selection = Read-Host "Enter the number corresponding to your choice"

switch ($selection) {
    1 {
        Write-Host "Installing FFMPEG..."
        choco upgrade ffmpeg -y
        break
    }
    2 {
        Write-Host "Installing FFMPEG-Shared..."
        choco upgrade ffmpeg-shared -y
        break
    }
    3 {
        Write-Host "Installing FFMPEG-Full..."
        choco upgrade ffmpeg-full -y
        break
    }
    default {
        Write-Host "Invalid selection. Please choose a valid option."
    }
}