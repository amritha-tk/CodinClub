
#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFullTime=2;
Maxrateperhr=20;
Maxworkingday=20;
empCheck=$((RANDOM%3))

case $empCheck in
$isPartTime) empHrs=4;;
$isFullTime) empHrs=8;;
*) empHrs=0;;
esac

salary=$(($empHrs*$Maxrateperhr))
wageinMon=$(($salary*$Maxworkingday))
echo "Salary is "$salary
echo "Salary in month" $wageinMon

#Check Employee present or absent
 attendance=$(( RANDOM%1 +1))
echo $attendance
if [ $attendance  -eq  0 ]
  then
     echo "Employee absent"
  else
     echo "Employee present"
fi

