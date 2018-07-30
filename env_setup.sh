#!/bin/bash

echo "setup ubuntu development environment"

packages_list=additional_packages_list

. $packages_list
#echo "additional_packages_ubunturfs=$additional_packages_ubunturfs"
echo installing additional packages: $additonal_package_type
for type in ${additonal_package_type}; do

	#echo `eval echo  '$'"${type}"`
	package_type=`eval echo  '$'"${type}"`
	#echo "package_type=$package_type"
	for pkg in $package_type; do
		echo installing package  $pkg ...
		sudo apt-get -y install $pkg || true
	done 
done
echo "additionally packages installed."

