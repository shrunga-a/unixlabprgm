
echo " enter a filename"
read file
if [ -e $file ]
then
set -- `ls -ld $file`
echo " file created at $6 $7 $8"
else
echo " file does not exists"
fi

