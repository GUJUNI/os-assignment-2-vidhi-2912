<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-18 
If cost price and selling price of an item are entered through the keyboard, write a program to determine whether the seller has made profit or loss. Also determine how much profit/loss is made.
---------------------------------------------------------------------------------------------------------------------------
c
echo -e "Enter the cost price: \c"
read cp
echo -e "Enter the selling price: \c"
read sp

if [ $sp -gt $cp ]; 
then
    profit=$((sp - cp))
    echo "The seller has made a profit of $profit."

elif [ $sp -lt $cp ];
then
    loss=$((cp - sp))
    echo "The seller has incurred a loss of $loss."

else
    echo "The seller has neither made a profit nor incurred a loss."
fi

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter the cost price: 1000
Enter the selling price: 500
The seller has made a loss of 500.
c