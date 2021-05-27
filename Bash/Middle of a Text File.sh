# https://www.hackerrank.com/challenges/text-processing-in-linux---the-middle-of-a-text-file/problem

# We need to print line 12 to 22
# So first we take first 22 lines and pass those 22 lines to tail command
# to print last 11 lines 

head -n 22 | tail -n 11