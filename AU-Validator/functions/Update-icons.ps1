function Update-Icons {
<#
.SYNOPSIS
  Check for image in the dedicated folder, download it from iconURL if missing, commit 
  and Updates Icon Url with correct hashes in the nuspec file

.DESCRIPTION
  Searches for icons matching the package name, if the file does not exist, download 
  from iconURL and commit the file, extracts the latest commit hash for that icon.
  It then updates the package nuspec file with the correct jsdelivr url.

.PARAMETER Name (Optional)
  If specified it only updates the package matching the specified name

.PARAMETER GitRepository (Required)
  The git repository url to use in the jsdelivr url
  ex: github.com/user/repo

.PARAMETER IconDirectory (Required)
  The relative path to where icons are located (relative to the location of the call)

.PARAMETER PackagesDirectory (Required)
  The relative path to where packages are located (relative to the location of the call)

.PARAMETER Cacher (Optional)
  Set the Caching website, currently ('githack', 'jsdelivr', 'staticaly')

.PARAMETER TimeCount (Optional)
  Count the execution time of the function

.PARAMETER Quiet (Optional)
  Do not write normal output to host.
  NOTE: Output from git and Write-Warning will still be available

.PARAMETER ShowIconNotFound (Optional)
  Show names of packages if a icon for the specified package is not found.

.PARAMETER Optimize (Optional)
  optimize/compress the icon if one is found, and supported
  optimizer is available. (Runs through all supported optimizers)

.PARAMETER SkipNuspec (Optional)
  Skip updating the nuspec

.OUTPUTS
  The number of packages that was updates,
  Count and names of the packages that fils update
  if some packages is already up to date, outputs how many.

.NOTES
  Currently supports icons with the following extensions
  (png, svg, jpg, ico)

.EXAMPLE (Getting informations from the git)
  ps> .\Update-Icons.ps1
  Updates all nuspec files with matching icons

.EXAMPLE (Getting informations from )
  ps> .\Update-Icons.ps1 -Name 'SQLite'
  Updates only a single nuspec file with the specified name with its matching icon

.EXAMPLE
  Possible outputs

  Updated 1 file
    output> Updated 1 icon url

  All is up-to-date
    output> Congratulations, all is already up to date.
            1 icon was already up-to-date

  When the url was incorrect
    output> Warning : 1 icon has been updated
    output> Package_Name have been updated

  When the file wasn't in the folder
    output> Warning : 1 icon was missing, it has been downloaded and updated in the nuspec
            Package_Name have been updated
#>

    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$false)]
        [pscustomobject[]]$Name,
        [Parameter(Mandatory=$true)]
        [string]$Path,
        [switch]$PurgeWorkingDirectory
    )

    param(
    [string]$IconName = $null,
    [Parameter(Mandatory=$true)]
    [string]$GitRepository = $null,
    [Parameter(Mandatory=$true)]
    [string]$IconDirectory = "../icons",
    [Parameter(Mandatory=$true)]
    [string]$PackagesDirectory = "../automatic",
    [ValidateSet('githack', 'jsdelivr', 'staticaly')]
    [string]$cacher = 'staticaly',
    [switch]$TimeCount,
    [switch]$Quiet,
    [switch]$ShowIconNotFound,
    [switch]$Optimize,
    [switch]$SkipNuspec
    )

    

}
