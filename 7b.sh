7b. Write a shell script that accepts a list of filenames as its argument, count and report
occurrence of each word that is present in the first argument file on other argument files.

if [ $# -ge 2 ] 
then 
if [ -f $1 ]
then 
for i in $*
do 
if [ $i != $1 ]
then
	if [ -f $i ]
	then
		for j in `cat $1`
		do
			count=`grep -owi $j $i | wc -l`  
			echo "Number of $j in $i is: $count"
		done
		echo "-------------------------------"
	else
		echo "$i doesn't exist"
	fi
fi 
done
else
echo "Enter patter file"
fi
else
echo "Give three parameters, 1.pattern 2.filename\n format: sh.filename.sh pattern file(s)"
fi
