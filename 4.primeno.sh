# Shell script using command line to print the prime number between two numbers .
if [ $# -gt 2 ]
then
echo "syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "enter begin range" 
read b
echo "enter end range" 
read e
else
b=$1
e=$2
fi
if [ $b -gt $e ]
then
c=$e
e=$b
b=$c
fi
echo "prime numbers from $b to $e are:"
for x in $(seq $b $e)
do
k=0
for i in $(seq 2 $(expr $x - 1))
do
        if [ $(expr $x % $i) -eq 0 ]
   then
            k=1
            break
        fi
    done
    if [ $k -eq 0 ]
    then
    echo $x
    fi
done
