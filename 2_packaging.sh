#!/bin/sh

# 2. create package version
sfdx force:package:version:create -p GIFter -d force-app/main -k test1234 --wait 10 -v DevHub

# 3. deploy to production org
sfdx force:package:install -u MyProduction --wait 10 --package GIFter@1.1.0-3 -k test1234 --noprompt
sfdx force:user:permset:assign -n GIFter -u MyProduction
sfdx force:org:open -p lightning/n/GIFter -u MyProduction