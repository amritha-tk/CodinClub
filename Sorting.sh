
#!/bin/bash -x

echo "Enter 3 numbers"
read a b c
declare -A arr
arr[x]=$(( ($a + $b) *$c ))
arr[y]=$(( ($a * $b) +$c ))
arr[z]=$(( $c + ($a / $b) ))
arr[v]=$(( ($a % $b) + $c ))

for val in "${!arr[@]}"
 do
  echo $val -${arr[$val]}
done
