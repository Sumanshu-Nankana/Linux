# https://www.hackerrank.com/challenges/bash-tutorials-filter-an-array-with-patterns/problem

i=0
while read line
do
 array[$i]=$line
 ((i=i+1))
done
echo  ${array[@]/*[aA]*/}