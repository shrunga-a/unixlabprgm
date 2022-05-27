
#6a. Write s a shell script to find a file/s that matches a pattern given as command line argumentthe home directory, display the contents of the file and copy the file into the directory
#~/mydir.
#comment


if [ $# -ge 1 ]
then
	if [ ! -e ~/mydir ]
	then
		mkdir ~/mydir
	fi	
	for k in $*
	do	
			if [ -f $k ]
			then
				find $HOME -name "$k">files
				while read line
				do
			
					num=`echo $line | grep -o "/" | wc -l`
					num=`expr $num + 1`
					file=`echo $line | cut -d "/" -f $num`
					cat $line
					echo "--------------------------------------------------------------"
					if [ `ls ~/mydir | grep $file | wc -l` -eq 0 ]
					then
						cp $line ~/mydir 
					fi
				done<files
			else
				echo "File doesn't exists"
			fi
	done
else
	echo "Give arguments"
fi
