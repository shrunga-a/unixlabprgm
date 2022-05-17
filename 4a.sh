for i in $*
do 
echo "----------$i content are---------"
if [ -e $i ]
then 
cat $i | tr "[a-z]" "[A-Z]"
echo "--------"
else
echo "$i does not exit"
fi
done
