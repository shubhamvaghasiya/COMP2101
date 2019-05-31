#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
read -p "Enter a number: " firstnum
read -p "Enter another number: " secondnum
# Improve this script by demonstrating using subtraction and multiplication
sum=$((firstnum + secondnum))
diff=$((firstnum - secondnum))
dividend=$((firstnum / secondnum))

fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number



cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum minus $secondnum is $diff
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF
