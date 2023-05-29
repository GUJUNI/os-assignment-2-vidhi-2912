<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1

---------------------------------------------------------------------------------------------------------------------------
Program-14  
Write a script to display the student marksheet in appropriate format.
---------------------------------------------------------------------------------------------------------------------------
c
echo "Enter student name: "
read name
echo "Enter student roll number: "
read roll
echo "Enter marks obtained in subject 1: "
read s1
echo "Enter marks obtained in subject 2: "
read s2
echo "Enter marks obtained in subject 3: "
read s3

total=$(expr $s1 + $s2 + $s3)
per=$(expr $total / 3)

echo "-------------------------------------"
echo "            MARKSHEET                 "
echo "-------------------------------------"
echo "Name: $name"
echo "Roll Number: $roll"
echo "-------------------------------------"
echo "Subject\t\tMarks Obtained"
echo "-------------------------------------"
echo "Subject 1\t\t$s1"
echo "Subject 2\t\t$s2"
echo "Subject 3\t\t$s3"
echo "-------------------------------------"
echo "Total Marks Obtained: $total"
echo "Percentage: $per%"
echo "-------------------------------------"

---------------------------------------------------------------------------------------------------------------------------

<<c
Output
Enter student name:
vidhi rathod
Enter student roll number:
31
Enter marks obtained in subject 1:
80
Enter marks obtained in subject 2:
85
Enter marks obtained in subject 3:
90
-------------------------------------
            MARKSHEET
-------------------------------------
Name: vidhi rathod
Roll Number: 31
-------------------------------------
Subject         Marks Obtained
-------------------------------------
Subject 1       80
Subject 2       85
Subject 3       90
-------------------------------------
Total Marks Obtained: 255
Percentage: 85%
-------------------------------------
