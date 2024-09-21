$Extensions=@(".png",".txt")
$file_count = 10
$dist_path = "tmp_files"

if(!(Test-Path -Path $dist_path)){
    New-Item -ItemType Directory -Path $dist_path
}
for ($i = 1; $i -lt $file_count; $i++){
    $file_name = -join ((65..90) + (97..122) | Get-Random -Count 8 | %{[char]$_})
    $ext = $Extensions[(Get-Random -Minimum 0 -Maximum ($Extensions.Count - 1))]
    $path = Join-Path -Path $dist_path -ChildPath "$file_name$ext"
    New-Item -ItemType File -Path $path
}
Write-Host "$file_count random files created in $dist_path"