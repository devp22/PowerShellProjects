$ServerListFilePath="D:\Dev\PowerShellProjects\EnvChecker\PowerShellProjects\EnvCheckerList.csv"

$ServerList = Import-Csv -Path $ServerListFilePath

foreach($Server in $ServerList){
    echo $Server
    ping $Server.ServerName
}