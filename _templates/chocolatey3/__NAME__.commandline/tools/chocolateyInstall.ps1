try { 

  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
  ### For BinRoot, use the following instead ###
  #$binRoot = "$env:systemdrive\"
  ### Using an environment variable to to define the bin root until we implement configuration ###
  #if($env:chocolatey_bin_root -ne $null){$binRoot = join-path $env:systemdrive $env:chocolatey_bin_root}
  #$installDir = Join-Path $binRoot '__NAME__'
  #Write-Host "Adding `'$installDir`' to the path and the current shell path"
  #Install-ChocolateyPath "$installDir"
  #$env:Path = "$($env:Path);$installDir"
  $zipUrl = 'somewhere.zip/7z'

  Install-ChocolateyZipPackage '__NAME__.commandline' "$zipUrl" "$installDir"

  ### OR for 7z ###

  # if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory($installDir)}
  
  # $tempDir = "$env:TEMP\chocolatey\__NAME__.commandline"
  # if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}

  # $file = Join-Path $tempDir "__NAME__.commandline.7z"
  # Get-ChocolateyWebFile '__NAME__.commandline' "$file" "$zipUrl"

  # Start-Process "7za" -ArgumentList "x -o`"$installDir`" -y `"$file`"" -Wait

  Write-ChocolateySuccess '__NAME__.commandline'
} catch {
  Write-ChocolateyFailure '__NAME__.commandline' "$($_.Exception.Message)"
  throw 
}