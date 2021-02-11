#The TSE exposes it's listings as JSON
$pages = @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z', '0-9')

foreach($page in $pages){
$data = Invoke-RestMethod -uri "https://www.tsx.com/json/company-directory/search/tsx/$page"
$data.results| Select-Object symbol,name
}
