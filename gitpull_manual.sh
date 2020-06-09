#!/bin/bash
script_path=$(dirname $(readlink -f "$0"))
echo $script_path
echo "update github folder manual $(date)" > $script_path/gitpull.log

packages_list=$script_path/gitfolder_list
echo $packages_list
. $packages_list

echo update gitcode everyday: $project_list
for project_name in ${project_list}; do
	echo "$project_name"

	echo `eval echo  '$'"${project_name}"`
	path_list=`eval echo  '$'"${project_name}"`

	echo "path_list="$path_list

	for project_path in $path_list;
	do
		echo "project_path="$project_path
		for folder in `ls $project_path`
		do
			echo "update folder "$project_path/$folder
			cd $project_path/$folder
			echo update $project_path/$folder
			echo update $project_path/$folder ...>> $script_path/gitpull.log
			git pull &

		done
	done

	
done
echo "github folder update finished"

