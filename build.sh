#!/bin/sh

#print the welcome message
figlet  Welcome People

echo "Started to build ..."
grunt build
echo "Build complete, copying files..."
cp -rv dist/ www/
echo "Copy complete, cleaning up..."

