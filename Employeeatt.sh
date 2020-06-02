
#!/bin/bash -x

WageperHr=20
FulldayHr=8

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
Dailywage=$(( $WageperHr * $FulldayHr ))
echo "DailyWage of an Employee will be" $Dailywage
