
#!/bin/bash -x

read -p "Enter number of times to flip the coin : " n
for (( i=0; i<$n; i++ ))
do
rand=$(( (RANDOM %2 ) + 1 ))
if [ $rand -eq 1 ]
 then
  echo "...Heads..."
else
  echo "...Tails.."
fi
done
