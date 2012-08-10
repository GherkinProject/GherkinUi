#!/bin/sh
echo -n "Do you really want to delete config files of Gherkin Ui ? (y/n)"
read answer

if [ $answer = "y" ]
then
    rm -f ~/.ghk/dbImported.xml ~/.ghk/configUi.cfg ~/.ghk/ui.log
    echo "Done"
else
    echo "Aborting"
fi
