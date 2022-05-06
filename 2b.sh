if [ $# -eq 1 ]
then
grep $1 /etc/passwd >ud
if [ $? -eq 0 ]
then
echo "user exist"
h=`cut -d ":" -f 6 ud`
echo "hm dir $1 and $h"
else
echo " not usr dir"
fi
else
echo " entr usr nm"
fi
