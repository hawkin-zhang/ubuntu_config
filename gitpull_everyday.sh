#!/bin/bash
script_path=$(dirname $(readlink -f "$0"))

echo "update git code everyday $(date)" >> $script_path/gitpull.log

packages_list=$script_path/gitfolder_list
echo $packages_list
. $packages_list
#echo "additional_packages_ubunturfs=$additional_packages_ubunturfs"
echo update gitcode everyday: $folder_type
for type in ${folder_type}; do
	#type_name=$type
	#echo "type_name=$type_name"
	#echo "additional_packages_tool=$additional_packages_tool"
	echo `eval echo  '$'"${type}"`
	folder_type=`eval echo  '$'"${type}"`
	echo "folder_type=$folder_type"
	for path in $folder_type; do
		cd $path
		echo update $path ...>> $script_path/gitpull.log
		git pull
	done
done
echo "update gitcode finished"

