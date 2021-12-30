$source = "https://github.com/DuendeSoftware/IdentityServer.Quickstart.UI.AspNetIdentity/archive/main.zip"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest $source -OutFile ui.zip

Expand-Archive ui.zip

if (!(Test-Path -Path Pages))       { mkdir Pages }
if (!(Test-Path -Path wwwroot))     { mkdir wwwroot }

copy .\ui\IdentityServer.Quickstart.UI-main\Pages\* Pages -recurse -force
copy .\ui\IdentityServer.Quickstart.UI-main\wwwroot\* wwwroot -recurse -force

del ui.zip
del ui -recurse
