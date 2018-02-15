$url = "http://localhost:64469/api"
Invoke-RestMethod -uri "$url/Values" -method GET -UseDefaultCredentials
Invoke-RestMethod -uri "$url/Values" -method PUT -Body "I PUT this." -UseDefaultCredentials
Invoke-RestMethod -uri "$url/Values" -method POST -Body "I POSTed this." -UseDefaultCredentials
Invoke-RestMethod -uri "$url/Values" -method GET -UseDefaultCredentials
Invoke-RestMethod -uri "$url/Values/3" -method GET -UseDefaultCredentials
