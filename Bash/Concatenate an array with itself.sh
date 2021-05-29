# https://www.hackerrank.com/challenges/bash-tutorials-concatenate-an-array-with-itself/problem

array=($(cat))              # cat will get the current content and put into array
Total=("${array[@]}" "${array[@]}" "${array[@]}")
echo ${Total[@]}