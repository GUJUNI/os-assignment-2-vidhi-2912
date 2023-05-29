<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-25 
Display the dates falling on Sundays of the current month.
---------------------------------------------------------------------------------------------------------------------------
c
year=$(date +%Y)
month=$(date +%m)

echo "Sundays in $month/$year:"
echo "------------------------"

# Loop through all dates of the month and check if they are Sundays
for ((day=1; day<=31; day++)); do
    # Check if the date is valid for the current month
    if date -d "$year-$month-$day" >/dev/null 2>&1; then
        # Check if the date is a Sunday
        if [ $(date -d "$year-$month-$day" +%u) -eq 7 ]; then
            echo "$day/$day/$year"
        fi
    fi
done

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :
Sundays in 05/2023:
------------------------
7/7/2023
14/14/2023
21/21/2023
28/28/2023
c