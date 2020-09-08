# Create by Brad Voris
# Requests user input for IP address
# uses User input variable to fill URI
# URI is launched and parced
# Results are on screen 

Write-Host "Welcome to AbuseIPDB.com"
$IPAddress = Read-Host "What is the suspect IP Address?"
$uri = "https://www.abuseipdb.com/check/$IPAddress"
$data = Invoke-WebRequest $uri
$table = $data.ParsedHtml.getElementsByTagName("table") | Select  -First 1
$h3 =  $data.ParsedHtml.getElementsByTagName("h3") | Select  -First 1 
$h3 | select -ExpandProperty innertext
$table | select -ExpandProperty innertext
