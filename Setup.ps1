# Define default settings for the manifest
$moduleSettings = @{
    ModuleVersion = '0.0.1'
    Author = 'tunisiano'
    CompanyName = ''
    Copyright = '@tunisiano187'
    Description = 'This package will try to give an easy way to check AU package before pack and publishing'
    FunctionsToExport = @()
    AliasesToExport = @()
    PrivateData = @{
        PSData = @{
            ProjectUri = 'https://github.com/tunisiano187/chocolatey-ps-validator'
        }
    }
    HelpInfoURI = 'https://gitter.im/Tunisiano18/community?utm_source=share-link&utm_medium=link&utm_campaign=share-link'
}

New-ModuleManifest @moduleSettings -Path './Validator/chocolatey-ps-validator.psd1'

