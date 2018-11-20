#!/usr/bin/env bash

set -e

SOURCE="https://github.com/IdentityServer/IdentityServer4.Quickstart.UI.AspNetIdentity/archive/master.zip"
curl -L -o ui.zip "$SOURCE"

unzip -d ui ui.zip

[[ -d Quickstart ]] || mkdir Quickstart
[[ -d Views ]] || mkdir Views
[[ -d wwwroot ]] || mkdir wwwroot

cp -r ./ui/IdentityServer4.Quickstart.UI.AspNetIdentity-master/Quickstart/* Quickstart
cp -r ./ui/IdentityServer4.Quickstart.UI.AspNetIdentity-master/Views/* Views
cp -r ./ui/IdentityServer4.Quickstart.UI.AspNetIdentity-master/wwwroot/* wwwroot

rm -rf ui ui.zip
