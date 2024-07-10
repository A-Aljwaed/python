

$datum=Get-Date
if($datum.toString("dddd")-eq"Donnerstag" -xor $datum.hour -gt 15){


Write-Host " es ist soweit"


}