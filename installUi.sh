#!/bin/sh
defaultDir=/usr/local/ghk-ui

echo "Beginning installation of Gherkin Gui"
echo -n "Default directory is $defaultDir, do you want to change it ? (y/n) "
read dirQuestion

if [ $dirQuestion = "y" ]
then
    echo "Put the absolute path where Gherkin Ui will be installed (without slash at the end)"
    read dir
else
    dir=$defaultDir
fi

echo "Creating and copying files"
mkdir -p $dir
cp -R src/* $dir/
chown -R $USER $dir
ln -s $dir/start_ui.py /usr/local/bin/ghk-ui
