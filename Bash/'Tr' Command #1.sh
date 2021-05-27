# https://www.hackerrank.com/challenges/text-processing-tr-1/problem


tr '()' '[]'

# tr ==> command is to translate characters

# For example:
# 'e' being transformed to 'E'

# $ echo "Hello" | tr "e" "E"
# HEllo
# Spaces being transformed to hyphens

# $ echo "Hello how are you" | tr " " '-'
# Hello-how-are-you
# Digits (numerals) being deleted

# $ echo "Hello how are you 1234" | tr -d [0-9]
# Hello how are you 

# It Changes character by character i.e. W ==> a ; o ==> s; r ==> d ; l ==> e; d ==> f
# $ echo "Hello World" | tr "World" "asdef"
# Heees asdef
