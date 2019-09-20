Get-Module
Get-Module -ListAvailable

Find-Module #Install modules from the Gallery
#Cloud shell is based on PS Core
$PSVersionTable


#Azure Drive based on Ships provider
cd './Visual Studio Ultimate with MSDN/'
cd cd ./ResourceGroups/
Get-AzVM

get-clouddrive

PS Azure:\> get-clouddrive

FileShareName      : cs-muzzar78-outlook-com-1003bffd90c51ead
FileSharePath      : //cs1abc2d98f3aadx4c5exbf3.file.core.windows.net/cs-muzzar78-outlook-com-1003bffd90c51ead
MountPoint         : /home/adam/clouddrive
Name               : cs1abc2d98f3aadx4c5exbf3
ResourceGroupName  : cloud-shell-storage-southeastasia
StorageAccountName : xxxxxxxx
SubscriptionId     : xxxxxxxx

# Navigate to the portal and have a look at cloud drive

#Create a folder in portal and check Cloud Shell

#Cloud drive
cd ~/home

# Use git
git clone https://github.com/tikabu/PSConfAsia2019.git

#Monaco/Code
code .

#PSReadline
code (get-psreadlineoption).historysavepath

# Stop sensitive info being writting to history - https://twitter.com/Lee_Holmes/status/1172640465767682048
Set-PSReadLineOption -AddToHistoryHandler {
    param([string]$line)

    $sensitive = "password|asplaintext|token|key|secret"
    return ($line -notmatch $sensitive)
}

# Tools that are installed by default - https://docs.microsoft.com/en-us/azure/cloud-shell/features

# PowerShell 7 - Beta in Cloud Shell
$PSVersionTable
iwr -uri 'https://github.com/PowerShell/PowerShell/releases/download/v7.0.0-preview.4/powershell-7.0.0-preview.4-linux-x64.tar.gz' -OutFile 'ps.tar.gz'
tar -xvzf ps.tar.gz
./pwsh
$psversiontable

# Managing Azure VM's with PowerShell
get-command -module PSCloudShellUtility

#$cred = Get-Credential (loaded this in profile to save typing)

Invoke-AzVMCommand -Name psconfwin -ResourceGroupName PSConfAsia -scriptblock {gcim win32_operatingsystem | fl *} -Credential $cred

Enable-AzVMPSRemoting -Name PSConfwin -ResourceGroupName PSConfAsia -OsType Windows -Protocol HTTPS

Enable-AzVMPSRemoting -Name PSConflinux -ResourceGroupName PSConfAsia -OsType Linux -Protocol SSH


#Other editors - vi, vim, nano, emacs
gcm nano, vi, vim, emacs

#Docs integration
https://docs.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-powershell

#Microsoft Learn Sandbox
https://docs.microsoft.com/en-us/learn/modules/deploy-vms-from-vhd-templates/4-exercise-create-image-provision-vm?pivots=windows-cloud

#Publish a port
md webapp
cd webapp
dotnet new mvc
dotnet run

#Edit the welcome page

# Jaap's script - @Jaap_Brasser

#https://github.com/jaapbrasser/SharedScripts/tree/master/Write-Emoticon


