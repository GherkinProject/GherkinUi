#!/bin/sh
defaultDir=/usr/local/ghk-ui

echo "Beginning installation of UiServer"
echo -n "Default directory is $defaultDir, do you want to change it ? (y/n) "
read dirQuestion

if [ $dirQuestion = "y" ]
then
    echo "Put the absolute path where Gherkin Ui will be installed (without slash at the end)"
    read dir
else
    dir=$defaultDir
fi

echo "Creating and copying files..."

#All files
if [ ! -d "$dir" ]
then
    mkdir -p $dir
    cp -R src/* $dir/
    echo "Copying files"
else
    echo "Application already installed"
fi

#Links
if [ ! -h /usr/local/bin/ghk-ui ]
then
    mkdir -p /usr/local/bin
    ln -s $dir/start_ui.py /usr/local/bin/ghk-ui
    echo "Creating link"
else
    echo "Link already existing"
fi

echo "Done"
