#Write a shell script that gets executed and displays the message either “Good Morning” or
#“Good Afternoon” or “Good Evening” depending upon time at which the user logs in.

set -- `who`
u=$1
time=$4
set -- `echo $time | tr ":" " "`
hr=$1
if [ $hr -ge 5 ] && [ $hr -lt 12 ]
then
	echo "Good morning($time) $u"
elif [ $hr -ge 12 ] && [ $hr -lt 15 ]
then
	echo "Good afternoon($time) $u"
elif [ $hr -ge 15 ] && [ $hr -lt 19 ]
then
	echo "Good evening($time) $u"
else	
	echo "Good night($time) $u"
fi
