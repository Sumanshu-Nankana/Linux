# https://www.hackerrank.com/challenges/bash-tutorials-count-the-number-of-elements-in-an-array/problem

array=($(cat))
echo ${#array[@]}