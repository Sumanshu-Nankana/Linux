# https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-3/problem

uniq -i -c | tr -s " " | cut -c 2-

# -i is to ignore case sensitive so, aa, AA , aA and Aa (all are same)