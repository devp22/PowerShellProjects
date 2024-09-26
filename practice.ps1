function farenHeitToCelsius ([double] $farenheit) {
    $celsius = $farenheit - 32
    $celsius = $celsius / 1.8
    Write-Output ('Celsius: '+[string]$celsius)
}
[double] $farenheit = Read-Host 'Enter temperature in farenheit: '
farenHeitToCelsius($farenheit)