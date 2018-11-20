#!/usr/bin/env bash

set -e

SOURCE="https://github.com/IdentityServer/IdentityServer4.Quickstart.UI.AspNetIdentity/archive/dev.zip"
curl -L -o ui.zip "$SOURCE"

unzip -d ui ui.zip

[[ -d Quickstart ]] || mkdir Quickstart
[[ -d Views ]] || mkdir Views
[[ -d wwwroot ]] || mkdir wwwroot

cp -r ./ui/IdentityServer4.Quickstart.UI.AspNetIdentity-dev/Quickstart/* Quickstart
cp -r ./ui/IdentityServer4.Quickstart.UI.AspNetIdentity-dev/Views/* Views
cp -r ./ui/IdentityServer4.Quickstart.UI.AspNetIdentity-dev/wwwroot/* wwwroot

rm -rf ui ui.zip
