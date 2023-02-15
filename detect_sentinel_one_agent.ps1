$result = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq "Sentinel One Agent"} | Select-Object -ExpandProperty Name

if ($result) {
    Write-Output "Sentinel One Agent est installé."
    exit 0
} else {
    Write-Output "Sentinel One Agent n'est pas installé."
    exit 1
}
