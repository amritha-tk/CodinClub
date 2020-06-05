
#!/bin/bash -x

rand=$(( (RANDOM %2 ) + 1 ))
if [ $rand -eq 1 ]
 then
  echo "...Heads..."
else
  echo "...Tails.."
fi
