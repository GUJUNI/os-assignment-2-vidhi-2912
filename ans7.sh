<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-7  
Write a script to reverse a six-digit number.
---------------------------------------------------------------------------------------------------------------------------
c
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

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT : 

Enter a six-digit number: 654321
Reversed number: 123456
c