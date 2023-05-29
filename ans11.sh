<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-11 
Write a script to print content of the file if file exits otherwise print appropriate message.
---------------------------------------------------------------------------------------------------------------------------
c
read -p "Enter file name : " file

if [ -f $file ]
then
        cat $fileName
else
        echo "File does not exist"
fi

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter file name : s1.sh
File does not exist

Enter file name : p6.sh
read -p "Enter a six digit number : " num

rev=0
rem=0

while [ $num -gt 0 ]
do
        rem=$(($num % 10))
        rev=$(($rev * 10 + $rem))
        num=$(($num / 10))
done

echo "Reversed number : $rev"
