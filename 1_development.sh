#!/bin/sh

#1. develop with scratch org
sfdx force:org:create -s -f config/project-scratch-def.json
sfdx force:source:push
sfdx force:user:permset:assign -n GIFter
sfdx force:org:open -p lightning/n/GIFter