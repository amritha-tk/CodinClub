
#!/bin/bash -x

echo "Enter 3 numbers"
read a b c
x=$(( ($a + $b) *$c ))
y=$(( ($a * $b) +$c ))
z=$(( $c + ($a / $b) ))
echo $x
echo $y
echo $z
