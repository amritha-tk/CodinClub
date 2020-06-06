#!/bin/bash

declare -A result1
read -p "Enter how many times to iterate" n
echo Single Toss
for (( count=0; count<$n; count++ ))
do
 rand=$(( (RANDOM %2 ) + 1 ))
   if [ $rand -eq 1 ]
    then
       if [[ ${result1["H"]} -eq null ]]
        then
          result1["H"]=1
       else
          result1["H"]=$((${result1["H"]}+1))
       fi
   else
         if [[ ${result1["T"]} -eq null ]]
       then
           result1["T"]=1
         else
           result1["T"]=$((${result1["T"]}+1))
         fi
fi
done

echo "The win percentage in singlet coin toss"

for i in ${!result1[@]}
do
  percentage=$( echo ${result1[$i]} $n | awk '{print $1/$2 * 100}' )
  echo "$i  => $percentage%"
done

max1="H"
for i in ${!result1[@]}
do
   if [[ ${result1[$i]} -gt ${result1[$max1]} ]]
     then
       max1=$i
    fi
done
echo The winner in singlet toss  $max1

