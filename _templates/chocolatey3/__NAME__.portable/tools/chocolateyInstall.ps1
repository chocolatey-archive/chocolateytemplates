#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one

$packageName = '__NAME__.portable' # arbitrary name for the package, used in messages
$url = 'URL_HERE/.zip/.7z' # download url
$url64 = 'URL_x64_HERE' # 64bit URL here or remove - if installer decides, then use $url

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  ### For BinRoot, use the following instead ###
  #$binRoot = Get-BinRoot
  #$installDir = Join-Path $binRoot "$packageName"
  #Write-Host "Adding `'$installDir`' to the path and the current shell path"
  #Install-ChocolateyPath "$installDir"
  #$env:Path = "$($env:Path);$installDir"

  # if removing $url64, please remove from here
  # despite the name "Install-ChocolateyZipPackage" this also works with 7z archives
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
