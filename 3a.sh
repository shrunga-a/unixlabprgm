echo "Enter the first file"
read file1
if [ -e $file1 ]
then
set -- `ls -ld $file1`
file1perm=$1
else
echo -n "file does not exist"
exit 
fi
echo "Enter the second file"
read file2
if [ -e $file2 ]
then
set -- `ls -ld $file2`
file2perm=$1
else
echo -n "file does not exist"
exit 
fi
if [ $file1perm = $file2perm ]
then
echo "file permission are identical"
echo "permossion is $file1perm"
else
echo "file permissions are  not identical"
echo "$file1 permission is $file1perm"
echo "$file2 permission is $file2perm"
fi
