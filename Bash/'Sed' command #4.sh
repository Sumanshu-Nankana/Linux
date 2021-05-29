# https://www.hackerrank.com/challenges/sed-command-4/problem

# Method-1
# [0-9]{4} : looks for four concurrent numbers only ,no space in between just a block of 4 numbers 
# -e ==> for expression
sed -r -e 's/[0-9]{4}/****/1' -e 's/[0-9]{4}/****/1' -e ' s/[0-9]{4}/****/1'

# Method-2
# There is a space after '+'
# means any number of digits followed by space
# So it will not consider last digits (because after that there will be no space)
sed 's/[0-9]\+ /**** /g'

# Method-3
sed -r 's/[0-9]{4} /**** /g'

# both method-2 and method-3 will fail - if there will be a space after last 4 digits