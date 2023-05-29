<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-12 
Write a script to check the string entered by user is palindrome or not.
---------------------------------------------------------------------------------------------------------------------------
c
echo -e "Enter a string: \c"
read a

reverse=$(echo $a | rev)

if [ $a = $reverse ]
then
  echo "The string $a is a palindrome."
else
  echo "The string $a is not a palindrome."
fi

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter a string: Hello
The string Hello is not a palindrome.
c