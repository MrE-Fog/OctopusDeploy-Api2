### PowerShell script to get a new user invite when using user/pass auth.

[String]$OctopusURL="https://example.octopus.app"
[String]$OctopusAPIKey = "API-KEY"

Invoke-WebRequest -UseBasicParsing -Uri "$OctopusURL/api/users/invitations" `
-Method "POST" `
-Headers @{
  "method"="POST"
  "accept"="application/json"
  "X-Octopus-ApiKey" = $OctopusAPIKey
} `
-ContentType "application/json" `
-Body "{`"AddToTeamIds`":[],`"SpaceId`":null}"
