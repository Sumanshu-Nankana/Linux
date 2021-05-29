# https://www.hackerrank.com/challenges/bash-tutorials-slice-an-array/problem

i=0
while read line
do
    array[$i]=$line
    ((i=i+1))
done
echo ${array[@]:3:5}