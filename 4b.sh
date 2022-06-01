#4b. Write a shell script that displays all the links to a file specified as the first argument to the
#script. The second argument, which is optional, can be used to specify in which the search is to
#begin. If this second argument is not present, the search is to begin in the current working
#directory. In either case, the starting directory as well as its subdirectories at all levels must be
#searched. The script need not include error checking.



if [ $# -ge 1 ]
then
	if [ $# -eq 2 ]
	then
		sd=$2
	else
		sd="."
	fi
	
	file=$1
	if [ -f $file ]
	then
		
		set -- `ls -i $file`
		inode=$1
		tfiles=`find $sd -inum $inode | wc -l`
		if [ $tfiles -eq 1 ]
		then
			echo "$file has no link files"
		else
			find $sd -inum $inode
			echo "The inode number for $tfiles files is $inode"
		fi
	else
		echo "Give valid file"
	fi
else
	echo "Give atleast one arguement"
fi
or

file=$2
if [ $# -eq 1 ]
then
	dirx="."
else
	if [ -e $2 ]
	then
		dirx="$2"
	else
		echo No such directory found
	fi
fi
set -- `ls -l $file`
lcnt=$2
if [ $lcnt -eq 1 ]
then
	echo "No other links"
	exit 0
else
	set -- `ls -i $file`
	inode=$1
	find "$dirx" -inum $inode -print
fi
