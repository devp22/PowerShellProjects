<#

# Define the file path
$fileName = '.\sample.xml'

# Read the XML file content
$fileContent = [xml](Get-Content $fileName)

Write-Output 'File read'
# Get user input for modification
$itemIndex = [int](Read-Host 'Enter the item number you want to modify: ')
$attribute = [string](Read-Host 'Enter the attribute you want to modify: ')
$newValue = [string](Read-Host 'Enter the new value: ')

# Access the item to modify
$item = $fileContent.rss.channel.item[$itemIndex]

# Set the new value
$item.$attribute = $newValue

# Save changes to the XML file
$fileContent.Save($fileName)

Write-Output "File saved"

#------------store output in a csv file---------------


Get-Process | Export-Csv C:\temp\t.csv
#>
