





function master-joda{
$menue=Read-Host

switch -Regex($menue){
  
  "^super"{
  Write-Host " meister"
  }
    
default{
Write-Host " dada"
}
}}
