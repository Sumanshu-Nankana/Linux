# https://www.hackerrank.com/challenges/bash-tutorials---getting-started-with-conditionals/problem

# Method-1
# we can't use (( )) ==> These brackets, these used for numbers, not for strings
# but [[ ]] ==> for both numbers and strings
read chr

if [ $chr = 'Y' ] ||[ $chr = 'y' ]
then
echo 'YES'
fi
if [ $chr = 'N' ] ||[ $chr = 'n' ]
then
echo 'NO'
fi

# Method-2

read chr

if [ $chr = 'Y' ] ||[ $chr = 'y' ]
then
echo 'YES'
else
echo 'NO'
fi