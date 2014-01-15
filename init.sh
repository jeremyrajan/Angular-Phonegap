#!/bin/sh

#initiate Brew and install it if necessary -- only checking on mac
#ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

#print the welcome message
figlet  Welcome People

echo "Enter name of the project: \c"
read projectname
echo "The project name is: $projectname"
echo "Confirm(Y/n): \c"
read confirm

result="Y"
result2="y"
dir=pwd

if [ $confirm == $result ] || [ $confirm == $result2 ] 
then
	echo "Installing in current directory, with name: $projectname ..."
	phonegap create "$projectname" --id=com.phonegap."$projectname" --name="$projectname"
	cp -rv "$projectname/" ./
	echo "cleaning up ..."
	rm -rf "$projectname"
	echo "Installing angular..."
	yo angular
	echo "TADA!! Done..."
else
	exit
fi

