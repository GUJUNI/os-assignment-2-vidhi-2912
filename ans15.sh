<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-15 
Basic salary of a person is input through the keyboard. His dearness allowance is 40% of basic salary and house rent is 20% of basic salary. Write a program to calculate the gross pay.
---------------------------------------------------------------------------------------------------------------------------
c
echo -e "Enter basic salary: \c"
read bs

da=$(echo "scale=2; $bs * 0.4" | bc)
hr=$(echo "scale=2; $bs * 0.2" | bc)
gs=$(echo "scale=2; $bs + $da + $hr" | bc)

echo "Dearness allowance: $da"
echo "House rent: $hr"
echo "Gross pay: $gs"

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter basic salary: 20000
Dearness allowance: 8000
House rent: 4000
Gross pay: 32000
c