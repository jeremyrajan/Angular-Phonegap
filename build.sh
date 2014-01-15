#!/bin/sh

#print the welcome message
figlet  Building AYP

echo "Started to build ..."
grunt build
if [ ! -d "dist" ]; then
	echo "------------------------------------------------------------------------------"
	echo "FATAL ERROR"
	echo "------------------------------------------------------------------------------"
	echo "Something went wrong during build, please check for GRUNT build errors above!"
	echo "============================================================================="
	exit
fi
echo "Build complete, copying files..."
cp -rv dist/ www/
echo "Copy complete, cleaning up..."
rm -rf dist/ www/js/ www/css www/404.html www/robots.txt
echo "Build Complete, ready to be deployed!"