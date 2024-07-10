try{



$a= New-Object System.Net.WebClient
$a.DownlowadFile("http://demotenant.de/myfile.docx","c:\temp\")

}
   catch [System.Net.webException],[System.Io.IoException]{
"download nicht möglich"

}


catch{

"fehler ist passiert "
}


