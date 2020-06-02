
#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#Check Employee present or absent
 attendance=$(( RANDOM%1 +1))
echo $attendance
if [ $attendance  -eq  0 ]
  then
     echo "Employee absent"
  else
     echo "Employee present"
fi
