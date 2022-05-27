
#8a. Write a shell script that determine the period for which as specified user is working on a
#system and display appropriate message.
#comment

ch=`date +%H`
cm=`date +%M`

echo "Users logged in:"
who | tr -s " " | cut -d " " -f 1 
echo "Enter the user:"
read user
set -- `who | tr -s " " | grep $user | cut -d " " -f 4 | tr ":" " "`

hdiff=`expr $ch - $1`
mdiff=`expr $cm - $2`
if [ $mdiff -lt 0 ]
then
	hdiff=`expr $hdiff - 1`
	mdiff=`expr $mdiff + 60`
fi
echo "User $user worked for $hdiff Hours - $mdiff Minutes"
