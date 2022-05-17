if [ -e $1 ]
then
set -- `ls -ld $1`
echo "permission are :$1"
echo "file linkcount:$2"
echo "file user:$3"
echo "file grup:$4"
echo "file size:$5"
echo "file creat at: $6 $7 $8"
echo "file name :$9"
else
echo "file doest exist"
fi
