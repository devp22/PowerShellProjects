#10.1. Access Information in an XML File

#Download an XML File

Invoke-WebRequest https://www.w3schools.com/xml/simple.xml -OutFile sample.xml

#Get-Content of this file

$fileContent = [xml] (Get-Content .\sample.xml)

Write-Output $fileContent

Write-Output $fileContent[0]
