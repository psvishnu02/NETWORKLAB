if  [ $# -gt 1 ]
then
echo "syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "enter first side"
read a
echo "enter second side"
read b
echo "enter third side"
read c
fi
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
then
echo "$a $b $c cannot be the sides of triangle"
exit
else
echo "$a $b $c can be the sides of triangle"
fi

