
#!/bin/bash -x

WageperHr=20
FulldayHr=8
ParttimeHr=4
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

dailyWage=$(( $WageperHr * $FulldayHr ))
echo "DailyWage of an Employee for fulltime" $dailyWage

partimeWage=$(( $WageperHr * $ParttimeHr ))
echo "Dailywage of parttime employeee" $partimeWage
