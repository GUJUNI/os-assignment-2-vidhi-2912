<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1

---------------------------------------------------------------------------------------------------------------------------
Program-3 
 Write a shell script to generate Fibonacci numbers from 1 to n.
---------------------------------------------------------------------------------------------------------------------------
c
echo "Enter a number : "
read num

n1=0
n2=1

echo "$n1"
while [ $n2 -le $num ]
do
        # echo "$n1"
        echo "$n2"

        temp=`expr $n1 + $n2`
        n1=$n2
        n2=$temp
done

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT : 

Enter a number : 10
0
1
1
2
3
5
8
c