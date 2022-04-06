echo "enter the password"
stty -echo
read p1
echo "confirm pasword"
stty echo
read p2
while [ $p1 != $p2 ]
do
echo "Password doesnot match reenter the password"
stty -echo
read p3
done
clear
echo "---------Terminal locked------"
echo "enter the password to unlock"
read p3
while [ $p1 != $p3 ]
do
echo "-------Terminal locked--------"
echo "password doesnot match reenter the password"
stty echo
read p3
done
echo "---------Terminal  unlocked------"
