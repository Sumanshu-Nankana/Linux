# https://www.hackerrank.com/challenges/text-processing-cut-9/problem


# When line given in quotes, it consider tab-character
while read line
do
echo "$line" | cut -f 2-
done
