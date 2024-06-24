$ele=get-childitem 

Get-ChildItem | ForEach-Object{

$_.Attributes
$_.LastAccessTime
}

forEach($ele in $ele){
#($i=0;$i -lt $ele.Count;$i++){

#write-host "$($ele[$i].Name)  wurde am     $($ele[$i].CreationTime)       erstellt"
}
