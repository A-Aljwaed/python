
param([parameter (mandatory=$true)]$tageaddieren)
$now=get-date
$newDate=$now.AddDays($tageaddieren)

Write-Host " heute ist $($now.ToString('MM-dd'))"
Write-Host "in $($tageaddieren) Tagen ist $($newDate),ein $($newDate.toString('dddd'))"