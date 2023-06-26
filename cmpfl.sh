#shell script to compare two files if the files are identical delete one

if [ $# -gt 2 ]
then
echo "Syntax is $0 [filename1] [filename2]"
exit 1
fi
if [ $# -eq 0 ]
then
echo 'Enter file1'
read file1
echo 'Enter file2'
read file2
else 
file1=$1
file2=$2
fi
if cmp -s -- "$file1" "$file2"
then
echo "The files are identical"
rm -i -- "$file2"
else
echo "The files are different"
fi
