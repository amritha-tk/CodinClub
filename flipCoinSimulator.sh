
#!/bin/bash -x
Head=0
Tail=0
for (( i=0; $Head<21 && $Tail<21; i++ ))
 do
  rand=$(( (RANDOM %2 ) + 1 ))
   if [ $rand -eq 1 ]
    then
     echo "...Heads..."
     ((Head++));
    else
     echo "...Tails.."
     ((Tail++))
fi
done
    if [[ $Head -eq $Tail ]]
     then
        echo "Its a Tie ang going for 1 more flip"
       for (( i=0; $Head<1 && $Tail<1; i++ ))
        do
          rand=$(( (RANDOM %2 ) + 1 ))
           if [ $rand -eq 1 ]
             then
              echo "...Heads..."
              ((Head++));
            else
              echo "...Tails.."
              ((Tail++))
            fi
         done
        echo "Heads=" $Head
        echo "Tails=" $Tail
   elif [[ $Head -gt $Tail ]]
    then
      echo "Heads won by " $Head
   else
      echo "Tails won by " $Tail
fi

