for i in $*
do
echo"---$i contents are ----"
if[ -f $i]
then
ca+ $i| tr "[a-z]" "[A-z]"
echo "-------------------------------------"
else
echo -n"$i file doesnot exists"
if 
done
