



function Get-webstats($urls){
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
foreach($url in $urls){
     $date = Get-Date
     Write-Host $url, "HTTP STATUS CODE" (Invoke-WebRequest -uri $url).StatusCode, $date

}

}


$webreqs = Read-Host -Prompt "Provide Url(s)"
foreach($webreq in $webreqs){
 $date = Get-Date
 Write-Host $link, "HTTP STATUS CODE" (Invoke-WebRequest -uri $webreq).StatusCode, $date

}