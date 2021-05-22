# https://www.hackerrank.com/challenges/bash-tutorials---arithmetic-operations/problem

read expression
printf "%.3f" $(echo $expression | bc -l)

# if we not use -l (option) o/p will not be in decimal