# Define default settings for the manifest
$moduleSettings = @{
    ModuleVersion = '0.0.1'
    GUID = '45083ee3-0a28-4757-9fc7-b3e58687beea'
    Author = 'tunisiano'
    CompanyName = 'None'
    Copyright = '@tunisiano187'
    Description = 'This package will try to give an easy way to check AU package before pack and publishing'
    FunctionsToExport = @()
    AliasesToExport = @()
    ProjectUri = 'https://github.com/tunisiano187/chocolatey-ps-validator'
    HelpInfoURI = 'https://gitter.im/Tunisiano18/community?utm_source=share-link&utm_medium=link&utm_campaign=share-link'
}

New-ModuleManifest @moduleSettings -Path './AU-Validator/chocolatey-ps-validator.psd1'

