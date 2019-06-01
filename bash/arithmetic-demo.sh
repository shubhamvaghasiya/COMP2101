#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
read -p "Enter a number: " firstnum
read -p "Enter another number: " secondnum
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number


sum=$((firstnum + secondnum))
diff=$((firstnum - secondnum))
div=$((firstnum / secondnum))
multi=$((firstnum * secondnum))
remainder=$((firstnum % secondnum))
power=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum gives $dividend with reminder of $remainder
  - More precisely, dividend is $fpdividend
$firstnum minus $secondnum is $diff
$firstnum multiplication $secondnum is $multi
output of $firstnum raised to power of $secondnum is $power

EOF
