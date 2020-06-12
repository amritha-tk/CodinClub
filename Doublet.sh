 #!/bin/bash

read -p "Enter how many times to iterate " n
declare -A B
echo "The Double coin toss"
for (( count=0; count<$n; count++ ))
 do
   rand1=$((RANDOM%2))
   rand2=$((RANDOM%2))

   if [[ $rand1 -eq 1 ]]
    then
         if [[ $rand2 -eq 1 ]]
           then
               if [[ ${B["HH"]} -eq null ]]
                then
                   B["HH"]=1
                 else
                   B["HH"]=$((${B["HH"]}+1))
                 fi
          else
              if [[ ${B["HT"]} -eq null ]]
               then
                 B["HT"]=1
              else
                 B["HT"]=$((${B["HT"]}+1))
               fi
                  fi
          else
               if [[ $rand2 -eq 1 ]]
          then
               if [[ ${B["TH"]} -eq null ]]
                 then
                     B["TH"]=1
              else
                     B["TH"]=$((${B["TH"]}+1))
               fi
               else
                if [[ ${B["TT"]} -eq null ]]
                 then
                     B["TT"]=1
              else
                    B["TT"]=$((${B["TT"]}+1))
               fi
             fi
          fi
done
echo The win percentage in doublet coin toss
for i in ${!B[@]}
do
percentage=$( echo ${B[$i]} $n | awk '{print $1/$2 * 100}' )
echo "$i -> $percentage%"
done

max2="HH"

for i in ${!B[@]}
do
 if [[ ${B[$i]} -gt  ${B[$max2]} ]]
  then
       max2=$i
    fi
done
echo The winner in doublet toss  $max2


