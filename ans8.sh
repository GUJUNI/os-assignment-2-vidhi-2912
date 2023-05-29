<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-8  
Write a menu driven shell script to find area of rectangle, triangle, and circle.
---------------------------------------------------------------------------------------------------------------------------
c
while true; do
        echo "1) Area of rectangle"
        echo "2) Area of triangle"
        echo "3) Area of circle"
        echo "4) Exit"

        read -p "Enter your choice : " ch

        if [ $ch -eq 4 ];
        then
                exit 0
        fi

        case $ch in
                1)
                        read -p "Length : " l
                        read -p "Breadth : " b
                        echo "Area of rectangle = `expr $l \* $b`"
                        ;;
                2)
                        read -p "Base : " b
                        read -p "Height : " h
                        echo "Area of circle = `expr $b \* $h / 2`"
                        ;;
                3)
                        read -p "Radius : " radius
                        echo "Area of circle = `expr 22 / 7 \* $radius \* $radius`"
                        ;;
                *)
                        echo "Invalid choice"
                        ;;
        esac
done

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT : 

1) Area of rectangle
2) Area of triangle
3) Area of circle
4) Exit
Enter your choice : 1

Length : 10
Breadth : 4
Area of rectangle = 40

1) Area of rectangle
2) Area of triangle
3) Area of circle
4) Exit

Enter your choice : 4
c