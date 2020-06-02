
#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFullTime=2;
Maxhrsinmon=10;
Maxrateperhr=20;
Maxworkingdays=20;

totalEmphrs=0;
totalworkingdays=0;

function getWorkingHrs(){
case $1 in
$isPartTime) empHrs=4;;
$isFullTime) empHrs=8;;
*) empHrs=0;;
esac
echo $empHrs
}

function dailyWage(){
worker=$1
wage=$(( worker * $Maxrateperhr ))
echo $wage
}


while [[ $totalEmphrs -lt $Maxhrsinmon && $totalworkingdays -lt $Maxworkingdays ]]
do
((totalworkingdays++))
totalEmphrs="$( getWorkingHrs $((RANDOM%3)) )";
done
totalSalary=$(($totalEmphrs*$Maxrateperhr));
echo "Total Salary" $totalSalary
Dailywage="$(dailyWage)"

#Check Employee present or absent
 attendance=$(( RANDOM%1 +1))
echo $attendance
if [ $attendance  -eq  0 ]
  then
     echo "Employee absent"
  else
     echo "Employee present"
fi

