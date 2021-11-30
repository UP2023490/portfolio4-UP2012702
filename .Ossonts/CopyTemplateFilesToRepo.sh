#!/bin/bash

# Reserved files are removed BEFORE this script

# rm -rf .Ossonts/Template/.git  # Remove template .git
cp -vrf Template/* Student/
cp -vrf Template/.Ossonts/* Student/.Ossonts/
cp -vrf Template/.github/* Student/.github/

# rm -rf .Ossonts/Template
#touch RandomFile.file
#git status
#git branch


# Remove this script as I dont want it in every repo
rm -fv Template/.Ossonts/CopyTemplateFilesToRepo.sh