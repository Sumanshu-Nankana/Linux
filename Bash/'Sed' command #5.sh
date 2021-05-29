# https://www.hackerrank.com/challenges/sed-command-5/problem

# Method-1
sed -r 's/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1/' 

# Method-2
# dot means single character
sed -r 's/(.... )(.... )(.... )(....)/\4 \3\2\1/'