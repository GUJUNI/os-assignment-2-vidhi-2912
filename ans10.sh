<<c
NAME 	   : Rathod Vidhi
ROLLNO     : 31
COURSE     : MCA-2
SUBJECT    : OPERATING SYSTEMs
ASSIGNMENT : 1
---------------------------------------------------------------------------------------------------------------------------
Program-10 
Write a menu driven shell script for storing employee information (like  add , delete , modify, display info)
---------------------------------------------------------------------------------------------------------------------------

c
declare -A employees

addemp() {
    echo "Enter employee ID:"
    read id
    echo "Enter employee name:"
    read name
    echo "Enter employee designation:"
    read designation

    employees[$id]="Name: $name, Designation: $designation"
    echo "Employee added successfully!"
}

delemp() {
    echo "Enter employee ID to delete:"
    read id

    if [[ -v employees[$id] ]]; then
        unset employees[$id]
        echo "Employee deleted successfully!"
    else
        echo "Employee not found!"
    fi
}

modemp() {
    echo "Enter employee ID to modify:"
    read id

    if [[ -v employees[$id] ]]; then
        echo "Enter new employee name:"
        read name
        echo "Enter new employee designation:"
        read designation

        employees[$id]="Name: $name, Designation: $designation"
        echo "Employee information modified successfully!"
    else
        echo "Employee not found!"
    fi
}

demp() {
    if [ ${#employees[@]} -eq 0 ]; then
        echo "No employees found!"
    else
        echo "Employee Information:"
        for id in "${!employees[@]}"; do
            echo "Employee ID: $id, ${employees[$id]}"
        done
    fi
}

while true
do
    echo
    echo "Employee Information Storage"
    echo "1. Add Employee"
    echo "2. Delete Employee"
    echo "3. Modify Employee Information"
    echo "4. Display Employees"
    echo "5. Exit"
    echo

    echo -e "Enter your choice: \c"
    read choice
    echo

    case $choice in
        1)
            addemp
            ;;
        2)
            delemp
            ;;
        3)
            modify_employee
            ;;
        4)
            demp
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
---------------------------------------------------------------------------------------------------------------------------

<<c
Output
Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 1

Enter employee ID:
101
Enter employee name:
vidhi rathod
Enter employee designation:
Manager
Employee added successfully!

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 1

Enter employee ID:
102
Enter employee name:
Tvisha rathod
Enter employee designation:
Engineer
Employee added successfully!

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 4

Employee Information:
Employee ID: 101, Name: vidhi rathod, Designation: Manager
Employee ID: 102, Name: Tvisha rathod, Designation: Engineer

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 2

Enter employee ID to delete:
101
Employee deleted successfully!

Employee Information Storage
1. Add Employee
2. Delete Employee
3. Modify Employee Information
4. Display Employees
5. Exit

Enter your choice: 5

Exiting...
c
