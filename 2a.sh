#Write a shell script that accepts two filenames as arguments, checks if the permissions for
#these files are identical and if the permissions are identical, output common permissions
#otherwise output each filename followed by its permissions.

f1=$1
f2=$2
if [ -e $f1 ]
then
	set -- `ls -ld $f1`
	f1p=$1
else
	echo "File does not exist"
	exit
fi

if [ -e $f2 ]
then
	set -- `ls -ld $f2`
	f2p=$1
else
	echo "File does not exist"
	exit
fi

if [ $f1p = $f2p ]
then
	echo "File permissions are identical"
	echo "file Permission is $f1p"
else
	echo "File permissions are not identical"
	echo "$f1 Permission of first file1 $f1p"
	echo "$f2 Permission of second file2 $f2p"
fi
