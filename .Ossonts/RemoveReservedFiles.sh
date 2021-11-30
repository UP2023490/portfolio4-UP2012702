#!/bin/bash

# This is a list of files that a student MIGHT have edited, -- so we dont want to overwrite.
#Remove template files that should not be overwritten

#You need to remove all files you want to keep :-)


#Now any files I want to keep ?
rm -fv CheckList.md
rm -fv .pandoc.yml
rm -fv Student.id ## Incase there is a testing ID in the system
rm -fv Submit/*
rm -fv Portfolio.md
rm -fv CW.md
rm -fv header.md
rm -fv declaration.md
rm -fv .Ossonts/*.log
rm -fv .Ossonts/Update.md
#rm -fv .Ossonts/RemoveReservedFiles.sh
rm -fv .github/workflows/* # Dont trust updating the updater - also remove permission for wf