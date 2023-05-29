<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-21 
Two numbers are entered through the keyboard, find the power, one number raised to another.
---------------------------------------------------------------------------------------------------------------------------
c
read -p "Enter the base number: " base
read -p "Enter the exponent: " exp

power=$(echo "$base^$exp" | bc)

echo "$base raised to the power of $exp is $power"

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter the base number:
4
Enter the exponent:
3
4 raised to the power of 3 is: 64
c