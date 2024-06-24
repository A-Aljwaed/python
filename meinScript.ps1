write-host "diser ist ein powershell ding "
$processes = get-process 
$processes = $processes | Select-Object -First 5

write-host "gerade laufen $($processes.count)  processe "