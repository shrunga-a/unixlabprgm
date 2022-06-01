#Write a shell script that gets executed and displays the message either “Good Morning” or
#“Good Afternoon” or “Good Evening” depending upon time at which the user logs in.

user=`whoami`
set -- `who | grep $user` 
hr=$4
echo User Login time $hr
set -- `echo $hr | tr ":" " "`
h=$1
if [ $h -gt 4 ] && [ $h -lt 12 ]
then
	echo Good morning Mr./Mrs. $user
elif [ $h -gt 12 ] && [ $h -lt 16 ]
then
	echo Good afternoon Mr./Mrs. $user
elif [ $h -gt 16 ] && [ $h -lt 19 ]
then
	echo Good evening Mr./Mrs. $user
else
	echo Good night Mr./Mrs. $user
fi
