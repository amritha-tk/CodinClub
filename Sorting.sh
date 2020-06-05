
#!/bin/bash -x

echo "Enter 3 numbers"
read a b c
x=$(( ($a + $b) *$c ))
y=$(( ($a * $b) +$c ))
echo $x
echo $y
