 #!/bin/bash

declare -A A
read -p "Enter how many times to iterate" n
echo Single Toss
for (( count=0; count<$n; count++ ))
do
 rand=$(( (RANDOM %2 ) + 1 ))
   if [ $rand -eq 1 ]
    then
       if [[ ${A["H"]} -eq null ]]
        then
          A["H"]=1
       else
          A["H"]=$((${A["H"]}+1))
       fi
   else
         if [[ ${A["T"]} -eq null ]]
       then
           A["T"]=1
         else
           A["T"]=$((${A["T"]}+1))
         fi
fi
done

echo "The win percentage in singlet coin toss"

for i in ${!A[@]}
do
  percentage=$( echo ${A[$i]} $n | awk '{print $1/$2 * 100}' )
  echo "$i  -> $percentage%"
done

max1="H"
for i in ${!A[@]}
do
   if [[ ${A[$i]} -gt ${A[$max1]} ]]
     then
       max1=$i
    fi
done
echo The winner in singlet toss  $max1


