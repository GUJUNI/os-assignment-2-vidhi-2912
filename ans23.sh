<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-23
The script displays a list of all files in the current directory to which you have read, write and execute permissions.
---------------------------------------------------------------------------------------------------------------------------
c
echo "Files with read, write, and execute permissions:"
echo "----------------------------------------------"

for file in *; do
    if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
        echo "$file"
    fi
done

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Files with read, write, and execute permissions:
----------------------------------------------
Application Data
Contacts
Cookies
Documents
Downloads
Favorites
Java
Music
My Documents
OneDrive
SendTo
Start Menu
Templates
Videos
anaconda3
source
c