Write-Output 'this is script 1'
$loc = ((Get-Location).Path + '\dev2.ps1')
Write-Output ('running '+$loc)
& $loc