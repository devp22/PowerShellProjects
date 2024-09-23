$fileLocation = '.\sample.txt'
$find = 'I'
$content = Get-Content $fileLocation
$hasFind = Select-String $find $fileLocation
echo 'content = ' $content
echo 'line number containing ' $find | Select LineNumber
echo 'has find ' $hasFind