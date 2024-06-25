function volljaehrig([string]$name,[parameter(Mandatory=$true)][int]$alter) {


if($alter -gt 18){
Write-Host "ok"
Write-Host "$name du bist volljährig"
}else {
Write-Host "sorry $name  du bist nicht alt genug"}

}
volljaehrig
