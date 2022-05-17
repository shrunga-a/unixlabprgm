echo -n "enter first file name:"
read file1
if [ -e $file1 ]
then
	set -- `ls -ld $file1`
	file1perm=$1
else
	echo "File does not exist"
	exit
fi
echo "enter second file:"
read file2
if [ -e $file2 ]
then
	set -- `ls -ld $file2`
	file2perm=$1
else
	echo -n "File does not exist"
	exit
fi

if [ $file1perm = $file2perm ]
then
	echo "File permissions are identical"
	echo "file Permission is $file1perm"
else
	echo "File permissions are not identical"
	echo "$file1 Permission is  $file1perm"
	echo "$file2 Permission is $file2perm"
fi
