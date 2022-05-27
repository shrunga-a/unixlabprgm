if [ $# -eq 1 ]
then
grep $1 /etc/passwd>file
if [ $? -eq 0 ]
then
echo "User entry"
sleep 10s
who | grep $1>file 
if [ $? -eq 0 ]
then
	echo "$1 logged in"
else
	echo "$1 is not logged in"
fi
else
echo "User doesn't exist"
fi
else
echo "Give argument"
fi

