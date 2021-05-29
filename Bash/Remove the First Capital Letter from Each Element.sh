# https://www.hackerrank.com/challenges/bash-tutorials-remove-the-first-capital-letter-from-each-array-element/problem


# Method-1
i=0
while read line
do
array[$i]=$line
((i=i+1))
done
echo ${array[@]/?/.};

# Method-2
i=0
while read line
do
array[$i]=$line
((i=i+1))
done
echo ${array[@]/[A-Z]/.}
