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

declare -A result2
echo "The Double coin toss"
for (( count=0; count<$n; count++ ))
 do
   rand1=$((RANDOM%2))
   rand2=$((RANDOM%2))

   if [[ $rand1 -eq 1 ]]
    then
         if [[ $rand2 -eq 1 ]]
           then
               if [[ ${result2["HH"]} -eq null ]]
                then
                   result2["HH"]=1
                 else
                   result2["HH"]=$((${result2["HH"]}+1))
                 fi
          else
              if [[ ${result2["HT"]} -eq null ]]
               then
                 result2["HT"]=1
              else
                 result2["HT"]=$((${result2["HT"]}+1))
               fi
                  fi
          else
               if [[ $rand2 -eq 1 ]]
          then
               if [[ ${result2["TH"]} -eq null ]]
                 then
                     result2["TH"]=1
              else
                result2["TH"]=$((${result2["TH"]}+1))
               fi
               else
                if [[ ${result2["TT"]} -eq null ]]
                 then
                     result2["TT"]=1
              else
                result2["TT"]=$((${result2["TT"]}+1))
               fi
             fi
          fi
done
echo The win percentage in doublet coin toss
for i in ${!result2[@]}
do
percentage=$( echo ${result2[$i]} $n | awk '{print $1/$2 * 100}' )
echo "$i => $percentage%"
done

max2="HH"

for i in ${!result2[@]}
do
 if [[ $result2[$i]} -gt  ${result2[$max2]} ]]
  then
       max2=$i
    fi
done
echo The winner in doublet toss  $max2

declare -A result3
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
                if [[ ${result3["HHH"]} -eq null ]]
                 then
                  result3["HHH"]=1
                 else
                   result3["HHH"]=$((${result3["HHH"]}+1))
                 fi

             else
                if [[ ${result3["HHT"]} -eq null ]]
                  then
                    result3["HHT"]=1
                 else
                     result3["HHT"]=$((${result3["HHT"]}+1))
                 fi
              fi
          else
            if [[ $rand3 -eq 1 ]]
             then
               if [[ ${result3["HTH"]} -eq null ]]
                 then
                   result3["HTH"]=1
                  else
                    result3["HTH"]=$((${result3["HTH"]}+1))
               fi
              else
                 if [[ ${result3["HTT"]} -eq null ]]
                   then
                     result3["HTT"]=1
                    else
                     result3["HTT"]=$((${result3["HTT"]}+1))
                 fi
             fi
         fi
    
 if [[ $rand2 -eq 1 ]]
           then
             if [[ $rand3 -eq 1 ]]
               then
                if [[ ${result3["TTH"]} -eq null ]]
                 then
                  result3["TTH"]=1
                 else
                   result3["TTH"]=$((${result3["TTH"]}+1))
                 fi

             else
                if [[ ${result3["THT"]} -eq null ]]
                  then
                    result3["THT"]=1
                 else
                     result3["THT"]=$((${result3["THT"]}+1))
                 fi
              fi
          else
            if [[ $rand3 -eq 1 ]]
             then
               if [[ ${result3["THH"]} -eq null ]]
                 then
                   result3["THH"]=1
                  else
                    result3["THH"]=$((${result3["THH"]}+1))
               fi
              else
                 if [[ ${result3["TTT"]} -eq null ]]
                   then
                     result3["TTT"]=1
                    else
                     result3["TTT"]=$((${result3["TTT"]}+1))
                 fi
             fi
         fi
    fi
done

echo The percentage win for triplet coin flip
for i in ${!result3[@]}
do
percentage=$( echo ${result3[$i]} $n | awk '{print $1/$2 * 100}' )
echo "$i => $percentage%"
done

max3="HHH"

for i in ${!result3[@]}
do
 if [[ $result3[$i]} -gt  ${result3[$max3]} ]]
  then
       max3=$i
    fi
done
echo The winner in triplet toss  $max3

