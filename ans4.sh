<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1

---------------------------------------------------------------------------------------------------------------------------
Program-4  
Write a shell script to generate prime number from 1 to n, where n any positive integer number by user.
---------------------------------------------------------------------------------------------------------------------------
c
echo "Enter a number : "
read num

n=3

echo "2"
while [ $n -le $num ]
do
        j=2
        flag="true"
        while [ $j -lt `expr $n / 2` ]
        do
                if [ `expr $n % $j` -eq 0 ];
                then
                        flag="false"
                        break
                fi

                j=`expr $j + 1`
        done

        if [ "$flag" = "true" ];
        then
                echo "$n"
        fi

        i=`expr $n + 1`
done

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter a number : 30
2
3
5
7
11
13
17
19
23
29

c