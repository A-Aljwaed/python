<#
.SYNOPSIS
Screibt eine Logdatei.
.example
beispiel >>>>   .\log.ps1 

#>

<# $logfilepath berechnet den logdatei pfad mit aktuellem Datum/Uhrzeit#>

$logfilePath ="c:\temp\log_$(get-date -format "yyyy-MM-dd_HHmm").txt"
function write-log(
[parameter (Mandatory=$true)]
[string]$logtxt,
$loglevel){
$logtxt= "$(Get-Date -Format "yyyy-MM-dd HH:mm:ss")-$logtxt"
}

write-log 