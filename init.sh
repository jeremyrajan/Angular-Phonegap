#!/bin/sh


echo " __        __   _                             _              _ __   ______  ";
echo " \ \      / /__| | ___ ___  _ __ ___   ___   | |_ ___       / \\ \ / /  _ \ ";
echo "  \ \ /\ / / _ \ |/ __/ _ \| '_ \` _ \ / _ \  | __/ _ \     / _ \\ V /| |_) |";
echo "   \ V  V /  __/ | (_| (_) | | | | | |  __/  | || (_) |   / ___ \| | |  __/ ";
echo "    \_/\_/ \___|_|\___\___/|_| |_| |_|\___|   \__\___/   /_/   \_\_| |_|    ";
echo "                                                                            ";                                                                  

echo "Installing dependencies..."

sudo npm install -g phonegap
sudo npm install -g bower 
npm install -g yo                                                                             

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
	echo "Angular installation complete, doing some magic ..."
	sed -i.bak '29a \
		<script type="text/javascript" src="phonegap.js"></script>
		' app/index.html
	echo "Some cleanup again..."
	rm -rf app/index.html.bak
	echo "TADA!!! done."
	
else
	exit
fi

