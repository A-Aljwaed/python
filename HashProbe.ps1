<#
Hashtable Access Performance Test
Settings:
$maxentries = Number of entries to put into the hashtable
$iterations = Number of access test per method
#>

$maxentries = 100000
$iterations = 5000
$meineHashtable = @{}
for($i = 1; $i -le $maxentries; $i++) {
    $meineHashtable.Add("ABC$i", "Hier ein Wert: $i")
}

$dot=for($i=0; $i -lt $iterations; $i++) {
    $obj = "ABC$(Get-Random -Minimum 1 -Maximum $maxentries)"
    Measure-Command {
        $meineHashtable.$obj
    }
}

    
$eck=for($i=0; $i -lt $iterations; $i++) {
    $obj = "ABC$(Get-Random -Minimum 1 -Maximum $maxentries)"
    Measure-Command {
        $meineHashtable[$obj]
    }
}
Write-Output "Variante mit [eckigen] Klammern:"
$eck.TotalMilliseconds | Measure-Object -Average -Maximum -Minimum | Format-Table Average,Maximum,Minimum
Write-Output "Variante mit .Punkt:"
$dot.TotalMilliseconds | Measure-Object -Average -Maximum -Minimum | Format-Table Average,Maximum,Minimum