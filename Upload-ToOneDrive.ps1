# ================================================================================================
# OneDrive Upload Script for Excellence Award 2025
# Script Name: Upload-ToOneDrive.ps1
# Description: Uploads all repository files to OneDrive automatically
# Author: Dr. Ali Abdelaal
# Department: Animal Welfare Department - Abu Dhabi Municipality
# Version: 1.0.0
# ================================================================================================

<#
.SYNOPSIS
    Uploads Excellence Award 2025 files to your OneDrive/SharePoint location.

.DESCRIPTION
    This script copies all project files to your OneDrive folder which will automatically
    sync to your corporate OneDrive at:
    https://admunicipality-my.sharepoint.com/personal/ali_abdelaal_adm_gov_ae/Documents/Excellence_Award_2025

.PARAMETER OneDrivePath
    The path to your OneDrive folder (auto-detected if not specified)

.PARAMETER TargetFolder
    The folder name within OneDrive (default: Excellence_Award_2025)

.EXAMPLE
    .\Upload-ToOneDrive.ps1
    
.EXAMPLE
    .\Upload-ToOneDrive.ps1 -OneDrivePath "C:\Users\ali.abdelaal\OneDrive - adm"
    
.NOTES
    Requires OneDrive desktop app to be installed and logged in.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$OneDrivePath,
    
    [Parameter(Mandatory = $false)]
    [string]$TargetFolder = "Excellence_Award_2025"
)

# ================================================================================================
# Functions
# ================================================================================================

function Write-ColoredMessage {
    param(
        [string]$Message,
        [string]$Color = "White"
    )
    Write-Host $Message -ForegroundColor $Color
}

function Show-Banner {
    Write-Host ""
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-ColoredMessage "   Excellence Award 2025 - OneDrive Upload Script" "Yellow"
    Write-ColoredMessage "   رفع ملفات جائزة التميز 2025 إلى OneDrive" "Yellow"
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-Host ""
}

function Find-OneDrivePath {
    Write-ColoredMessage "🔍 Searching for OneDrive folder..." "Cyan"
    
    # Common OneDrive paths
    $possiblePaths = @(
        "$env:USERPROFILE\OneDrive - adm",
        "$env:USERPROFILE\OneDrive - Abu Dhabi Municipality",
        "$env:OneDriveCommercial",
        "$env:OneDrive",
        "$env:USERPROFILE\OneDrive"
    )
    
    foreach ($path in $possiblePaths) {
        if (Test-Path $path) {
            Write-ColoredMessage "✅ Found OneDrive at: $path" "Green"
            return $path
        }
    }
    
    # If not found, ask user
    Write-ColoredMessage "⚠️  Could not auto-detect OneDrive folder" "Yellow"
    Write-Host ""
    Write-ColoredMessage "Common OneDrive paths:" "Cyan"
    Write-ColoredMessage "  - C:\Users\YourName\OneDrive - adm" "Gray"
    Write-ColoredMessage "  - C:\Users\YourName\OneDrive" "Gray"
    Write-Host ""
    
    $manualPath = Read-Host "Please enter your OneDrive path"
    
    if (Test-Path $manualPath) {
        Write-ColoredMessage "✅ Path verified: $manualPath" "Green"
        return $manualPath
    }
    else {
        Write-ColoredMessage "❌ Path does not exist: $manualPath" "Red"
        return $null
    }
}

function Get-SourceFiles {
    param([string]$SourcePath)
    
    Write-ColoredMessage "📂 Scanning source files..." "Cyan"
    
    # Exclude patterns
    $excludePatterns = @(
        '*.git*',
        'node_modules',
        '__pycache__',
        '*.log',
        '*.tmp',
        'Upload-ToOneDrive.ps1'
    )
    
    $files = Get-ChildItem -Path $SourcePath -Recurse -File | Where-Object {
        $file = $_
        $shouldExclude = $false
        
        foreach ($pattern in $excludePatterns) {
            if ($file.FullName -like "*$pattern*") {
                $shouldExclude = $true
                break
            }
        }
        
        -not $shouldExclude
    }
    
    Write-ColoredMessage "✅ Found $($files.Count) files to upload" "Green"
    return $files
}

function Copy-FilesToOneDrive {
    param(
        [array]$Files,
        [string]$SourcePath,
        [string]$DestinationPath
    )
    
    Write-ColoredMessage "📦 Starting file copy to OneDrive..." "Cyan"
    Write-ColoredMessage "   Source: $SourcePath" "Gray"
    Write-ColoredMessage "   Destination: $DestinationPath" "Gray"
    Write-Host ""
    
    $successCount = 0
    $failCount = 0
    $totalFiles = $Files.Count
    $currentFile = 0
    
    # Create destination folder if it doesn't exist
    if (-not (Test-Path $DestinationPath)) {
        New-Item -Path $DestinationPath -ItemType Directory -Force | Out-Null
        Write-ColoredMessage "✅ Created destination folder" "Green"
    }
    
    foreach ($file in $Files) {
        $currentFile++
        $relativePath = $file.FullName.Substring($SourcePath.Length).TrimStart('\')
        $targetPath = Join-Path $DestinationPath $relativePath
        $targetDir = Split-Path $targetPath -Parent
        
        # Show progress
        $percentComplete = [math]::Round(($currentFile / $totalFiles) * 100)
        Write-Progress -Activity "Copying files to OneDrive" -Status "[$currentFile/$totalFiles] $($file.Name)" -PercentComplete $percentComplete
        
        try {
            # Create directory if it doesn't exist
            if (-not (Test-Path $targetDir)) {
                New-Item -Path $targetDir -ItemType Directory -Force | Out-Null
            }
            
            # Copy file
            Copy-Item -Path $file.FullName -Destination $targetPath -Force
            Write-ColoredMessage "   ✅ Copied: $relativePath" "Green"
            $successCount++
        }
        catch {
            Write-ColoredMessage "   ❌ Failed: $relativePath - $_" "Red"
            $failCount++
        }
    }
    
    Write-Progress -Activity "Copying files to OneDrive" -Completed
    Write-Host ""
    
    Write-ColoredMessage "📊 Upload Summary:" "Cyan"
    Write-ColoredMessage "   ✅ Successfully copied: $successCount files" "Green"
    
    if ($failCount -gt 0) {
        Write-ColoredMessage "   ❌ Failed to copy: $failCount files" "Red"
    }
    
    return ($failCount -eq 0)
}

function Wait-ForSync {
    param([string]$OneDrivePath)
    
    Write-Host ""
    Write-ColoredMessage "⏳ OneDrive will now sync your files to the cloud..." "Cyan"
    Write-ColoredMessage "   This may take a few minutes depending on file size and internet speed" "Gray"
    Write-Host ""
    Write-ColoredMessage "💡 Tips:" "Yellow"
    Write-ColoredMessage "   - Check OneDrive icon in system tray for sync status" "Gray"
    Write-ColoredMessage "   - Blue checkmark ✓ means file is synced" "Gray"
    Write-ColoredMessage "   - Cloud icon ☁ means file is syncing" "Gray"
    Write-Host ""
}

function Show-CompletionInfo {
    Write-Host ""
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-ColoredMessage "🎉 Upload completed successfully!" "Green"
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-Host ""
    Write-ColoredMessage "📍 Your files are being synced to:" "Yellow"
    Write-ColoredMessage "   https://admunicipality-my.sharepoint.com/personal/ali_abdelaal_adm_gov_ae/Documents/Excellence_Award_2025" "White"
    Write-Host ""
    Write-ColoredMessage "📋 Next Steps:" "Yellow"
    Write-ColoredMessage "   1. Wait for OneDrive to complete syncing (check system tray icon)" "Gray"
    Write-ColoredMessage "   2. Open the URL above in your browser to verify files" "Gray"
    Write-ColoredMessage "   3. Share the OneDrive link with team members if needed" "Gray"
    Write-ColoredMessage "   4. All future changes will auto-sync to OneDrive" "Gray"
    Write-Host ""
    Write-ColoredMessage "💡 Pro Tip:" "Cyan"
    Write-ColoredMessage "   You can now work directly in the OneDrive folder and all changes" "Gray"
    Write-ColoredMessage "   will automatically sync to SharePoint/OneDrive!" "Gray"
    Write-Host ""
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-Host ""
}

# ================================================================================================
# Main Script Execution
# ================================================================================================

Show-Banner

# Get current script directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-ColoredMessage "📂 Source location: $scriptPath" "Gray"
Write-Host ""

# Find or prompt for OneDrive path
if (-not $OneDrivePath) {
    $OneDrivePath = Find-OneDrivePath
    
    if (-not $OneDrivePath) {
        Write-ColoredMessage "❌ Cannot proceed without valid OneDrive path" "Red"
        Write-Host ""
        Write-ColoredMessage "Please ensure:" "Yellow"
        Write-ColoredMessage "  1. OneDrive desktop app is installed" "Gray"
        Write-ColoredMessage "  2. You are logged in with your corporate account (ali.abdelaal@adm.gov.ae)" "Gray"
        Write-ColoredMessage "  3. OneDrive sync is enabled" "Gray"
        Write-Host ""
        pause
        exit 1
    }
}

Write-Host ""

# Build destination path
$destinationPath = Join-Path $OneDrivePath "Documents\$TargetFolder"
Write-ColoredMessage "🎯 Destination: $destinationPath" "Cyan"
Write-Host ""

# Confirm with user
Write-ColoredMessage "⚠️  This will copy all project files to OneDrive" "Yellow"
Write-ColoredMessage "   Any existing files will be overwritten" "Gray"
Write-Host ""
$confirm = Read-Host "Do you want to continue? (Y/N)"

if ($confirm -ne 'Y' -and $confirm -ne 'y') {
    Write-ColoredMessage "❌ Upload cancelled by user" "Red"
    exit 0
}

Write-Host ""

# Get source files
$files = Get-SourceFiles -SourcePath $scriptPath

if ($files.Count -eq 0) {
    Write-ColoredMessage "❌ No files found to upload" "Red"
    exit 1
}

Write-Host ""

# Copy files
$success = Copy-FilesToOneDrive -Files $files -SourcePath $scriptPath -DestinationPath $destinationPath

if ($success) {
    Wait-ForSync -OneDrivePath $OneDrivePath
    Show-CompletionInfo
}
else {
    Write-ColoredMessage "⚠️  Upload completed with errors" "Yellow"
    Write-ColoredMessage "   Please check the error messages above" "Gray"
}

Write-ColoredMessage "✅ Script completed!" "Green"
Write-Host ""
pause
