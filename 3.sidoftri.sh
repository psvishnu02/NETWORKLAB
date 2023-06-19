# Shell script to read 3 numbers and test whether they can be sides os a triangle.

if  [ $# -gt 3 -o $# -lt 3 -a $# -gt 0 ]
then
echo "syntax error,syntax is $0 [first side] [second side] [third side]"
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
else
a=$1
b=$2
c=$3
fi
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
then
echo "$a $b $c cannot be the sides of triangle"
exit
else
echo "$a $b $c can be the sides of triangle"
fi

