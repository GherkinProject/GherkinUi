#!/bin/sh
defaultStarter=/usr/local/bin/ghk-ui
defaultScript=`readlink -f $defaultStarter`
dir=${defaultScript%/*}

echo "Found directory in $dir"
echo "Removing..."
rm -r $dir
rm $defaultStarter
echo "Done"
