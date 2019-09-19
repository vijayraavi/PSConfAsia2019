Get-Module
Get-Module -ListAvailable

Find-Module #Install modules from the Gallery
#Cloud shell is based on PS Core
$PSVersionTable




#Azure Drive based on Ships provider
cd './Visual Studio Ultimate with MSDN/'
cd cd ./ResourceGroups/

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
iwr -uri 'https://github.com/PowerShell/PowerShell/releases/download/v7.0.0-preview.3/powershell-7.0.0-preview.3-linux-x64.tar.gz' -OutFile 'ps.tar.gz'
tar -xvzf ps.tar.gz
./pwsh
$psversiontable

# Managing a VM with PowerShell direct
get-command -module PSCloudShellUtility

Enable-AzVMPSRemoting -Name demo_vm -ResourceGroupName PSConfAsia2019-rg -OsType Windows -Protocol HTTPS

Invoke-AzVMCommand

Enter-AzVM

#Other editors - vi, vim, nano, emacs
gcm nano, vi, vim, emacs

#Docs integration
https://docs.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-powershell

#Microsoft Learn Sandbox
https://docs.microsoft.com/en-us/learn/modules/deploy-vms-from-vhd-templates/4-exercise-create-image-provision-vm?pivots=windows-cloud

