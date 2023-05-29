<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-19 
The script receives two file names as arguments, the script must check whether the files are same or not, if they are similar then delete the second file.
---------------------------------------------------------------------------------------------------------------------------
c
echo -e "Enter the path to the first file : \c"
read  file1
echo -e "Enter the path to the second file : \c"
read file2

if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "One or both files do not exist"
    exit 1
fi

if cmp -s "$file1" "$file2"; then
    echo "The files $file1 and $file2 are identical"
    echo -e "Do you want to delete the file $file2? (y/n) \c"
    read choice
    if [ "$choice" = "y" ]; then
        rm "$file2"
        echo "The file $file2 has been deleted."
    else
        echo "The file $file2 is not deleted."
    fi
else
    echo "The files $file1 and $file2 are different"
fi

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter the path to the first file : p9.sh
Enter the path to the second file : p11.sh
The files p9.sh and p11.sh are identical
Do you want to delete the file p11.sh? (y/n) y
The file p11.sh has been deleted.
c