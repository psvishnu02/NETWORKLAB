#7.shell script to display message "Good Morning,Good Afternoon,Good evening and Good Night" according to system time
if  [ $# -gt 1 ]
then
echo "syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
h=$(date +"%H")
if [ $h -ge 6 -a $h -lt 12 ]
then
echo "good morning"
elif [ $h -ge 12 -a $h -lt 16 ]
then 
echo "good afternoon"
elif [ $h -ge 16 -a $h -lt 20 ]
then
echo "good evening"
else
echo "good night"
fi
fi
