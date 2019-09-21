@{
# region definition 
  RootModule = './Xkcd.psm1'
  ModuleVersion = '0.1.4'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = ''
  CompanyName = ''
  Copyright = ''
  Description = ''
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Xkcd.private.dll'
  FormatsToProcess = './Xkcd.format.ps1xml'
# endregion 

# region persistent data 
  GUID = 'ab95ba56-3e2e-4a33-f831-19ac871cc6ed'
# endregion 

# region private data 
  PrivateData = @{
    PSData = @{
      Tags = ''
      LicenseUri = ''
      ProjectUri = ''
      ReleaseNotes = ''
    }
  }
# endregion 

# region exports
  CmdletsToExport = 'Get-XkcdComic', '*'
  AliasesToExport = '*'
# endregion

}