# https://www.hackerrank.com/challenges/text-processing-cut-5/problem

# Method-1
while read line
do
echo "$line" | cut -f 1,2,3
done


# Method-2

while read line
do
echo "$line" | cut -f -3
done


# But below did NOT work
# Not Sure, why we need to put quotes "" around $line

# while read line
# do
# echo $line | cut -f -3
# done

# Probably Reason is :
# When double quotes are used white space (tab space is a form of white space) is preserved. When double quotes aren't used tabspace isn't preserved. cut by default uses tabspace as a delimiter to extract the fields. If no tabspaces are present (and if delimiter option of cut hasn't been modified) then cut wont work.