$DnpSimHost = "10.211.55.4"
$Port = ":21212"
$url = "http://$DnpSimHost$Port/api"
"Invoke-RestMethod -uri ""$url/DnpSim"" -method GET -UseDefaultCredentials"
Invoke-RestMethod -uri "$url/DnpSim" -method GET -UseDefaultCredentials

"`r`nInvoke-RestMethod -uri ""$url/DnpSim"" -method PUT -Body ""I PUT this."" -UseDefaultCredentials"
Invoke-RestMethod -uri "$url/DnpSim" -method PUT -Body "I PUT this." -UseDefaultCredentials

"`r`nInvoke-RestMethod -uri ""$url/DnpSim"" -method POST -Body ""I POSTed this."" -UseDefaultCredentials"
Invoke-RestMethod -uri "$url/DnpSim" -method POST -Body "I POSTed this." -UseDefaultCredentials

"`r`nInvoke-RestMethod -uri ""$url/DnpSim"" -method GET -UseDefaultCredentials"
Invoke-RestMethod -uri "$url/DnpSim" -method GET -UseDefaultCredentials

"`r`nInvoke-RestMethod -uri ""$url/DnpSim/3"" -method GET -UseDefaultCredentials"
Invoke-RestMethod -uri "$url/DnpSim/3" -method GET -UseDefaultCredentials
