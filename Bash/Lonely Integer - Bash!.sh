# https://www.hackerrank.com/challenges/lonely-integer-2/problem


# read the input values

read
arr=($(cat))
length=${#arr[@]}

if ($length == 1 ); then
    echo ${arr[0]}
else
    sol=$(( arr[0] ^ arr[1] ))
    for(( i=2; i<$length; i++ ));
    do
        sol=$(( $sol ^ arr[$i] ))
    done
    echo $sol
fi

# read first line
# then cat (i.e. read everything) and store in an array
# apply XOR to find unique element