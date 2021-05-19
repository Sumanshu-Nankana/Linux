# https://www.hackerrank.com/challenges/bash-tutorials---comparing-numbers/problem

# Method-1
read X
read Y

if (($X > $Y))
   then
   echo "X is greater than Y"
fi
if (($X < $Y))
   then
   echo "X is less than Y"
fi
if (($X == $Y))
   then
   echo "X is equal to Y"
fi


# Method-2
# There should be a space after bracket

read X
read Y

if [ $X -gt $Y ]
   then
   echo "X is greater than Y"
fi
if [ $X -lt $Y ]
   then
   echo "X is less than Y"
fi
if [ $X -eq $Y ]
   then
   echo "X is equal to Y"
fi