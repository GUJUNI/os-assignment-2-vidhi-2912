<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-6 
Write a menu driven shell script for remove, rename, copy and modify a file.
---------------------------------------------------------------------------------------------------------------------------
c
while true; do
        echo "1) Remove a file"
        echo "2) Rename a file"
        echo "3) Copy a file"
        echo "4) Modify a file"
        echo "5) Exit"

        read -p "Enter a choice : " ch

        clear

        if [ $ch -eq 5 ];
        then
                exit 0
        fi

        ls

        read -p "Enter file name : " fn

        if [ -f $fn ]
        then
                case $ch in
                        1)
                                rm $fn
                                echo "File removed"
                                ;;
                        2)
                                read -p "Enter new file name : " new
                                mv $fn $new
                                ;;
                        3)
                                read -p "Enter destination file name : " dest
                                cp $fn $dest
                                ;;
                        4)
                                nano $fn
                                ;;
                        *) echo "Invalid choice" ;;
                esac

                ls
        else
                echo "Invalid choice"
        fi
done

<<c
********************************************************************************************************************************************************************************************

OUTPUT : 

1) Remove a file
2) Rename a file
3) Copy a file
4) Modify a file
5) Exit
Enter a choice : 3

1.sh  2.sh  3.sh  4.sh  5.sh  6.sh  8.sh

Enter file name : 1.sh

1.sh  11.sh  2.sh  3.sh  4.sh  5.sh  6.sh  8.sh

1) Remove a file
2) Rename a file
3) Copy a file
4) Modify a file
5) Exit
Enter a choice : 1

1.sh  11.sh  2.sh  3.sh  4.sh  5.sh  6.sh  8.sh

Enter file name : 11.sh

File removed
1.sh  2.sh  3.sh  4.sh  5.sh  6.sh  8.sh
c