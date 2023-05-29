<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-22 
Write a script which has the functionality similar to head and tail commands.
---------------------------------------------------------------------------------------------------------------------------
c
while true
do
    echo
    echo "1. Head"
    echo "2. Tail"
    echo "3. Exit"
    echo

    echo -e "Enter your choice : \c"
    read ch
    echo

    if [ $ch == 3 ]
    then
        break
    fi

    echo -e "Enter the number of lines to display : \c"
    read lines

    echo -e "Enter the file name : \c"
    read file
    echo

    case $ch in
        1)
            head -n "$lines" "$file"
            ;;
        2)
            tail -n "$lines" "$file"
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

1. Head
2. Tail
3. Exit

Enter your choice : 1

Enter the number of lines to display : 2
Enter the file name : p2.sh

echo "Enter a number : "
read n

1. Head
2. Tail
3. Exit

Enter your choice :3
c