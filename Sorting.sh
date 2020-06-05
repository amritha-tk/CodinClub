
#!/bin/bash -x

echo "Enter 3 numbers"
read a b c
declare -A dict
dict[x]=$(( ($a + $b) *$c ))
dict[y]=$(( ($a * $b) +$c ))
dict[z]=$(( $c + ($a / $b) ))
dict[v]=$(( ($a % $b) + $c ))

i=0
for val in "${!dict[@]}"
 do
  echo $val -${dict[$val]}
  ((i=i+1))
   Arr[$i]=${dict[$val]}
done
echo ${Arr[@]}

for (( i = 0; i<${#Arr[@]}; i++ ))
 do
  for(( j = 0; j<${#Arr[@]}; j++ ))
   do
    if [[ ${Arr[$j]} -lt ${Arr[$((j+1))]} ]]
      then
        temp=${Arr[$j]}
        Arr[$j]=${Arr[$((j+1))]}
        Arr[$((j+1))]=$temp
     fi
  done
done
echo "Elements after sorting in descending order"
echo ${Arr[*]}

for (( i = 0; i<${#Arr[@]}; i++))
do

    for(( j = 0; j<${#Arr[@]}; j++))
    do

        if [[ ${Arr[$j]} -gt ${Arr[$((j+1))]} ]]
         then
            # swap
            temp=${Arr[$j]}
            Arr[$j]=${Arr[$((j+1))]}
            Arr[$((j+1))]=$temp
        fi
    done
done
echo "Array in sorted  ascending order :"
echo ${Arr[*]}

