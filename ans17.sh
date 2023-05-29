<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-17 
The script will receive the filename or filename with its full path, the script should obtain information about this file as given by "ls -l" and display it in proper format.
e.g., Filename : , File access permissions : , Number of links : , Owner of the file : , Group to which belongs : Size of file : , File modification date : , File modification time : .
---------------------------------------------------------------------------------------------------------------------------
c
echo -e "Enter filename or filename with its full path: \c"
read file

file_info=$(ls -l "$file")

fname=$(echo "$file_info" | awk '{print $NF}')
aperm=$(echo "$file_info" | awk '{print $1}')
nlinks=$(echo "$file_info" | awk '{print $2}')
owner=$(echo "$file_info" | awk '{print $3}')
group=$(echo "$file_info" | awk '{print $4}')
size=$(echo "$file_info" | awk '{print $5}')
mdate=$(echo "$file_info" | awk '{print $6}')
mtime=$(echo "$file_info" | awk '{print $7}')

echo "Filename: $filename"
echo "File access permissions: $aperm"
echo "Number of links: $nlinks"
echo "Owner of the file: $owner"
echo "Group to which belongs: $group"
echo "Size of file: $size bytes"
echo "File modification date: $mdate"
echo "File modification time: $mtime"

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter filename or filename with its full path: p16.sh
Filename: p16.sh
File access permissions: -rw-r--r--
Number of links: 1
Owner of the file: vidhi
Group to which belongs: 186089
Size of file: 450 bytes
File modification date: May
File modification time: 26
c