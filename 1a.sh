#Write a shell script that takes a valid directory name as a argument recursively descend all the sub-directors, find the maximum length of 
#any file in that hierarchy and writ the maximum value to the standard output.

if [ $# -eq 1 ]
then
	if [ -d $1 ]
	then
		set -- `ls -Rl $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9- | sort -n | tail -n 1`
		echo "File size: $1"
		echo "File name: $2"
	else
		echo "Not a directory"
	fi
else
	echo "Enter directory name"
fi
