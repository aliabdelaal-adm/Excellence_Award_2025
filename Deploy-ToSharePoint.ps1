# ================================================================================================
# SharePoint Deployment Script
# Script Name: Deploy-ToSharePoint.ps1
# Description: Deploys Excellence Award 2025 website to SharePoint
# Author: Dr. Ali Abdelaal
# Department: Animal Welfare Department - Abu Dhabi Municipality
# Version: 1.0.0
# ================================================================================================

<#
.SYNOPSIS
    Deploys the Excellence Award 2025 website to SharePoint Online or SharePoint Server.

.DESCRIPTION
    This script automates the deployment of all website files to a SharePoint site.
    It creates necessary folders, uploads files, and configures permissions.

.PARAMETER SiteUrl
    The URL of the SharePoint site (e.g., https://tenant.sharepoint.com/sites/excellence)

.PARAMETER DocumentLibrary
    The name of the document library (default: "Site Assets")

.PARAMETER TargetFolder
    The target folder name within the library (default: "excellence-platform")

.PARAMETER Credential
    PSCredential object for authentication (if not provided, interactive login will be used)

.EXAMPLE
    .\Deploy-ToSharePoint.ps1 -SiteUrl "https://contoso.sharepoint.com/sites/excellence"

.EXAMPLE
    .\Deploy-ToSharePoint.ps1 -SiteUrl "https://contoso.sharepoint.com/sites/excellence" -DocumentLibrary "Documents" -TargetFolder "award-2025"

.NOTES
    Requires PnP.PowerShell module: Install-Module -Name PnP.PowerShell -Force
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, HelpMessage = "SharePoint site URL")]
    [string]$SiteUrl,
    
    [Parameter(Mandatory = $false)]
    [string]$DocumentLibrary = "Site Assets",
    
    [Parameter(Mandatory = $false)]
    [string]$TargetFolder = "excellence-platform",
    
    [Parameter(Mandatory = $false)]
    [PSCredential]$Credential
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
    Write-ColoredMessage "   Excellence Award 2025 - SharePoint Deployment Script" "Yellow"
    Write-ColoredMessage "   منصة التميز الداخلي - أداة النشر على SharePoint" "Yellow"
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-Host ""
}

function Test-PnPModule {
    Write-ColoredMessage "🔍 Checking for PnP.PowerShell module..." "Cyan"
    
    if (-not (Get-Module -ListAvailable -Name PnP.PowerShell)) {
        Write-ColoredMessage "❌ PnP.PowerShell module not found!" "Red"
        Write-ColoredMessage "📦 Installing PnP.PowerShell module..." "Yellow"
        
        try {
            Install-Module -Name PnP.PowerShell -Force -Scope CurrentUser -AllowClobber
            Write-ColoredMessage "✅ PnP.PowerShell module installed successfully!" "Green"
        }
        catch {
            Write-ColoredMessage "❌ Failed to install PnP.PowerShell module: $_" "Red"
            return $false
        }
    }
    else {
        Write-ColoredMessage "✅ PnP.PowerShell module is already installed" "Green"
    }
    
    return $true
}

function Connect-ToSharePoint {
    param([string]$Url)
    
    Write-ColoredMessage "🔐 Connecting to SharePoint..." "Cyan"
    Write-ColoredMessage "   Site URL: $Url" "Gray"
    
    try {
        if ($Credential) {
            Connect-PnPOnline -Url $Url -Credentials $Credential -ErrorAction Stop
        }
        else {
            Connect-PnPOnline -Url $Url -Interactive -ErrorAction Stop
        }
        
        Write-ColoredMessage "✅ Successfully connected to SharePoint!" "Green"
        return $true
    }
    catch {
        Write-ColoredMessage "❌ Failed to connect to SharePoint: $_" "Red"
        return $false
    }
}

function Ensure-DocumentLibrary {
    param(
        [string]$LibraryName
    )
    
    Write-ColoredMessage "📚 Checking document library: $LibraryName" "Cyan"
    
    try {
        $library = Get-PnPList -Identity $LibraryName -ErrorAction SilentlyContinue
        
        if ($null -eq $library) {
            Write-ColoredMessage "📝 Creating document library: $LibraryName" "Yellow"
            New-PnPList -Title $LibraryName -Template DocumentLibrary -ErrorAction Stop
            Write-ColoredMessage "✅ Document library created successfully!" "Green"
        }
        else {
            Write-ColoredMessage "✅ Document library already exists" "Green"
        }
        
        return $true
    }
    catch {
        Write-ColoredMessage "❌ Failed to create/verify document library: $_" "Red"
        return $false
    }
}

function Ensure-Folder {
    param(
        [string]$LibraryName,
        [string]$FolderPath
    )
    
    Write-ColoredMessage "📁 Ensuring folder exists: $FolderPath" "Cyan"
    
    try {
        $folder = Get-PnPFolder -Url "$LibraryName/$FolderPath" -ErrorAction SilentlyContinue
        
        if ($null -eq $folder) {
            Add-PnPFolder -Name $FolderPath -Folder $LibraryName -ErrorAction Stop
            Write-ColoredMessage "✅ Folder created: $FolderPath" "Green"
        }
        else {
            Write-ColoredMessage "✅ Folder already exists: $FolderPath" "Green"
        }
        
        return $true
    }
    catch {
        Write-ColoredMessage "❌ Failed to create folder: $_" "Red"
        return $false
    }
}

function Upload-File {
    param(
        [string]$LocalPath,
        [string]$SharePointPath
    )
    
    try {
        $fileName = Split-Path $LocalPath -Leaf
        Write-ColoredMessage "   ⬆️  Uploading: $fileName" "Gray"
        
        Add-PnPFile -Path $LocalPath -Folder $SharePointPath -ErrorAction Stop | Out-Null
        
        Write-ColoredMessage "   ✅ Uploaded: $fileName" "Green"
        return $true
    }
    catch {
        Write-ColoredMessage "   ❌ Failed to upload $fileName : $_" "Red"
        return $false
    }
}

function Deploy-Files {
    param(
        [string]$SourcePath,
        [string]$TargetPath
    )
    
    Write-ColoredMessage "📦 Starting file deployment..." "Cyan"
    Write-ColoredMessage "   Source: $SourcePath" "Gray"
    Write-ColoredMessage "   Target: $TargetPath" "Gray"
    Write-Host ""
    
    $successCount = 0
    $failCount = 0
    
    # Get all files from source directory
    $files = Get-ChildItem -Path $SourcePath -File -Recurse
    
    foreach ($file in $files) {
        $relativePath = $file.FullName.Substring($SourcePath.Length).TrimStart('\', '/')
        $targetFolder = Split-Path -Parent $relativePath
        
        if ($targetFolder) {
            $fullTargetFolder = "$TargetPath/$($targetFolder -replace '\\', '/')"
        }
        else {
            $fullTargetFolder = $TargetPath
        }
        
        # Upload file
        if (Upload-File -LocalPath $file.FullName -SharePointPath $fullTargetFolder) {
            $successCount++
        }
        else {
            $failCount++
        }
    }
    
    Write-Host ""
    Write-ColoredMessage "📊 Deployment Summary:" "Cyan"
    Write-ColoredMessage "   ✅ Successfully uploaded: $successCount files" "Green"
    
    if ($failCount -gt 0) {
        Write-ColoredMessage "   ❌ Failed to upload: $failCount files" "Red"
    }
    
    return ($failCount -eq 0)
}

function Set-HomePage {
    param(
        [string]$LibraryName,
        [string]$FolderPath,
        [string]$FileName = "index.html"
    )
    
    Write-ColoredMessage "🏠 Setting home page..." "Cyan"
    
    try {
        $homePageUrl = "$LibraryName/$FolderPath/$FileName"
        Set-PnPHomePage -RootFolderRelativeUrl $homePageUrl -ErrorAction Stop
        Write-ColoredMessage "✅ Home page set successfully!" "Green"
        return $true
    }
    catch {
        Write-ColoredMessage "⚠️  Could not set home page automatically: $_" "Yellow"
        Write-ColoredMessage "   You can set it manually in SharePoint site settings" "Gray"
        return $false
    }
}

function Show-DeploymentInfo {
    param(
        [string]$SiteUrl,
        [string]$LibraryName,
        [string]$FolderPath
    )
    
    Write-Host ""
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-ColoredMessage "🎉 Deployment completed successfully!" "Green"
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-Host ""
    Write-ColoredMessage "📍 Your website is now available at:" "Yellow"
    Write-ColoredMessage "   $SiteUrl/$LibraryName/$FolderPath/index.html" "White"
    Write-Host ""
    Write-ColoredMessage "📋 Next Steps:" "Yellow"
    Write-ColoredMessage "   1. Open the URL above in your browser" "Gray"
    Write-ColoredMessage "   2. Verify all pages load correctly" "Gray"
    Write-ColoredMessage "   3. Test file upload functionality" "Gray"
    Write-ColoredMessage "   4. Configure permissions (see SHAREPOINT_DEPLOYMENT_GUIDE.md)" "Gray"
    Write-ColoredMessage "   5. Change admin password in index.html (current: admin2024)" "Gray"
    Write-Host ""
    Write-ColoredMessage "📚 For detailed instructions, see: SHAREPOINT_DEPLOYMENT_GUIDE.md" "Cyan"
    Write-ColoredMessage "================================================================================================" "Cyan"
    Write-Host ""
}

# ================================================================================================
# Main Script Execution
# ================================================================================================

Show-Banner

# Get current script directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-ColoredMessage "📂 Script location: $scriptPath" "Gray"
Write-Host ""

# Check and install PnP module
if (-not (Test-PnPModule)) {
    Write-ColoredMessage "❌ Cannot proceed without PnP.PowerShell module" "Red"
    exit 1
}

Write-Host ""

# Connect to SharePoint
if (-not (Connect-ToSharePoint -Url $SiteUrl)) {
    Write-ColoredMessage "❌ Cannot proceed without SharePoint connection" "Red"
    exit 1
}

Write-Host ""

# Ensure document library exists
if (-not (Ensure-DocumentLibrary -LibraryName $DocumentLibrary)) {
    Write-ColoredMessage "❌ Cannot proceed without document library" "Red"
    exit 1
}

Write-Host ""

# Ensure target folder exists
if (-not (Ensure-Folder -LibraryName $DocumentLibrary -FolderPath $TargetFolder)) {
    Write-ColoredMessage "❌ Cannot proceed without target folder" "Red"
    exit 1
}

Write-Host ""

# Deploy files
$deploymentSuccess = Deploy-Files -SourcePath $scriptPath -TargetPath "$DocumentLibrary/$TargetFolder"

if (-not $deploymentSuccess) {
    Write-ColoredMessage "⚠️  Deployment completed with errors" "Yellow"
}

Write-Host ""

# Try to set home page (optional)
Set-HomePage -LibraryName $DocumentLibrary -FolderPath $TargetFolder | Out-Null

# Show deployment information
Show-DeploymentInfo -SiteUrl $SiteUrl -LibraryName $DocumentLibrary -FolderPath $TargetFolder

# Disconnect
Disconnect-PnPOnline

Write-ColoredMessage "✅ Deployment script completed!" "Green"
Write-Host ""
