# https://www.hackerrank.com/challenges/awk-4/problem


awk '{
if ( NR%2 == 0 )
printf $0"\n";
else
printf $0";";
}'


# print the line and append ';'
# print the line if Number of Lines % 2 == 0 (i.e. even) and appended by new line
# we use printf instead of print
# because print -by default add the new lines 