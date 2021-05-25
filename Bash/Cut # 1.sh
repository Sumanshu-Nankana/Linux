# https://www.hackerrank.com/challenges/text-processing-cut-1/problem

# Method-1

while read line
    do
        echo $line | cut -c3
    done
    
# OR - Space between c & 3 also works

while read line
    do
        echo $line | cut -c 3       
    done
    
    
# N the Nth field, byte or character, starting from 1.   (So cut only 1 character of that position)
# N- from the Nth field, byte or character, to the end of the line. (Cut everything from that position till last)
# N-M from the Nth to the Mth field, byte, or character. (Cut starting from N till M)
# -M from the first to the Mth field, byte, or character. (Cut everything from start till that position)
# N,M ==> Cut Only Nth character and Mth character

# Few More Examples:

# The -d flag sets the delimiter, space in this case, 
# and the -f flag shows which column to return, . 
# The column count starts at 1

echo '0000 192.168.1.100 192.168.100.1' |cut -d ' ' -f 2
192.168.1.100

# In this command, output from the first command is piped to a second command 
# where the delimiter is a period and the column is 4
echo '0000 192.168.1.100 192.168.100.1' |cut -d ' ' -f 2 |cut -d '.' -f 4
100

# Finally, cut is used to extract the first character from the results of the second command.
echo '0000 192.168.1.100 192.168.100.1' |cut -d ' ' -f 2 |cut -d '.' -f 4|cut -c 1
1
