 #!/bin/bash


read -p "Enter how many times to iterate" n
declare -A C
echo "The Triple coin toss"
for (( count=0; count<$n; count++ ))
 do
   rand1=$((RANDOM%2))
   rand2=$((RANDOM%2))
   rand3=$((RANDOM%2))
   if [[ $rand1 -eq 1 ]]
    then
         if [[ $rand2 -eq 1 ]]
           then
             if [[ $rand3 -eq 1 ]]
               then
                if [[ ${C["HHH"]} -eq null ]]
                 then
                      C["HHH"]=1
                 else
                       C["HHH"]=$((${C["HHH"]}+1))
                 fi

             else
                if [[ ${C["HHT"]} -eq null ]]
                  then
                    C["HHT"]=1
                 else
                     C["HHT"]=$((${result3["HHT"]}+1))
                 fi
              fi
          else
            if [[ $rand3 -eq 1 ]]
             then
               if [[ ${C["HTH"]} -eq null ]]
                 then
                     C["HTH"]=1
                  else
                      C["HTH"]=$((${C["HTH"]}+1))
               fi
              else
                 if [[ ${C["HTT"]} -eq null ]]
                   then
                         C["HTT"]=1
                    else
                         C["HTT"]=$((${C["HTT"]}+1))
                 fi
             fi
         fi
    
 if [[ $rand2 -eq 1 ]]
           then
             if [[ $rand3 -eq 1 ]]
               then
                if [[ ${C["TTH"]} -eq null ]]
                 then
                       C["TTH"]=1
                 else
                        C["TTH"]=$((${C["TTH"]}+1))
                 fi

             else
                if [[ ${C["THT"]} -eq null ]]
                  then
                       C["THT"]=1
                 else
                        C["THT"]=$((${C["THT"]}+1))
                 fi
              fi
          else
            if [[ $rand3 -eq 1 ]]
             then
               if [[ ${C["THH"]} -eq null ]]
                 then
                      C["THH"]=1
                  else
                       C["THH"]=$((${C["THH"]}+1))
               fi
              else
                 if [[ ${C["TTT"]} -eq null ]]
                   then
                        C["TTT"]=1
                    else
                         C["TTT"]=$((${C["TTT"]}+1))
                 fi
             fi
         fi
    fi
done

echo The percentage win for triplet coin flip
for i in ${!C[@]}
do
percentage=$( echo ${C[$i]} $n | awk '{print $1/$2 * 100}' )
echo "$i => $percentage%"
done

max3="HHH"

for i in ${!C[@]}
do
 if [[ ${C[$i]} -gt  ${C[$max3]} ]]
  then
       max3=$i
    fi
done
echo The winner in triplet toss  $max3

