# https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average/problem

read n
# seq ==> sequence i.e. start from 1 and run till n
for i in $(seq 1 $n);
    do
        read num
        # there should not be any space between '='
        sum=$((sum + num))
    done
printf "%.3f" $(echo "$sum/$n" | bc -l)


# NOT SURE - why below for loop is not working
# and giving wrong answer
# read n
# for i in {1..$n}
#     do
#         read num
#         sum=$((sum + num))
#     done
# printf "%.3f" $(echo "$sum/$n" | bc -l)