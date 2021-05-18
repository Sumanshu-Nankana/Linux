# Method-1 (using expr) - using expr, we have to use space with each operand
read x
read y
echo $(expr $x + $y)
echo $(expr $x - $y)
echo $(expr $x \* $y)
echo $(expr $x / $y)

# Method-2 using double brackets
# double brackets can execute any mathematical expression with space or without space
read x
read y
echo $(( $x + $y))
echo $(( $x - $y))
echo $(( $x * $y))
echo $(( $x / $y))

# Method-3 using let command (but let will not directly print it on terminal, first we need to store in variable)
read x
read y
# There should not be any space between variable and equal sign
let sum=$x+$y
let sub=$x-$y
let mul=$x*$y
let div=$x/$y
echo $sum
echo $sub
echo $mul
echo $div

# Method-3 (Part-2) Using let command - if we have to give space, we need to enclose into double quotes
read x
read y
let "sum = $x + $y"
let "sub = $x - $y"
let "mul = $x * $y"
let "div = $x / $y"
echo $sum
echo $sub
echo $mul
echo $div

# Method-4 using bc
# One of the major limitations of the above ways of doing arithmetic operations in bash is that ‘expr’ or ‘let’ or # # double brackets expression are not able to produce floating point or double numbers. The output of division # # # # operations of the above examples are integers. ‘bc’ command can be used to solve this problem and it works as a # # # basic calculator for the Linux operating system

read x
read y
echo $x+$y | bc
echo $x-$y | bc
echo $x*$y | bc
echo $x/$y | bc

# But as in question, it is mention that, we need to generate integer output in division
# so if we use 'bc' method, we will get wrong output with decimals 
# So we can't use this method for this question
# but if we need decimal , then this is the method we have