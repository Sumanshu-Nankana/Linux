# https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-2/problem

# Uniq -c (gives count) and add extra spaces as well
# Then we use translate to remove any space with just single space
# Then we cut from 2nd position till end; because first is space (which comes from 2nd pipe command)

uniq -c | tr -s ' ' | cut -c 2-
