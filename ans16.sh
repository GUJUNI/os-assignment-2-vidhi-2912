<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-16  
The distance between two cities is input through the keyboard. (in km). Write a program to convert this distance into metres, feet, inches and centimetres and display the results.
---------------------------------------------------------------------------------------------------------------------------
c
echo -e "Enter distance between two cities (in km) : \c"
read dk

dm=$(echo "scale=2; $distance_km * 1000" | bc)
dft=$(echo "scale=2; $distance_km * 3280.84" | bc)
din=$(echo "scale=2; $distance_ft * 12" | bc)
dcm=$(echo "scale=2; $distance_m * 100" | bc)

echo "Distance in meters: $distance_m m"
echo "Distance in feet: $distance_ft ft"
echo "Distance in inches: $distance_in in"
echo "Distance in centimeters: $distance_cm cm"

<<c
---------------------------------------------------------------------------------------------------------------------------

OUTPUT :

Enter the distance between two cities (in kilometers):
20
Distance:
In meters: 20000 m
In feet: 65616.8 ft
In inches: 240 in
In centimeters: 2000 cm
c
