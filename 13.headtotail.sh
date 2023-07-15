#shell script to print specified range of the lines from given files*
if [ $# -le 0 ]
then
echo " Syntax is <$0 > <range> <file....>"
exit 1
fi
n1=$1
n2=$2
shift
shift
n3=`expr $n2 - $n1 + 1`
while [ $# -ne 0 ]
do
echo " lines from $n1 to $n2 from file $1\n"
head -$n2 $1 | tail -$n3
shift
done
exit 0

