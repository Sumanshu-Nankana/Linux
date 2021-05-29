# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-4/problem

# Method-1
grep -i -w -e "the" -e "that" -e "then" -e "those"

# Method-2
# make sure we use capital 'E'
# -e, --regexp=PATTERNS     use PATTERNS for matching
# -E, --extended-regexp     PATTERNS are extended regular expressions

grep -Eiw 'th(e|ose|en|at)'


# Method-3
# grep -E is same as egrep
egrep -iw 'the|that|then|those'

#  In egrep, +, ?, |, (, and ),  treated as meta characters. Where as in grep, they are rather treated as pattern instead of meta characters. By including 'backslash' followed by meta character can let the grep to treat it as meta characters like \?, \+, \{, \|, \(, and \). 

# ls | grep '.txt|.php'
# Let us consider this example, in this we are listing all the files in the present working directory. Using pipe we are passing the output of ls to grep. The grep command will check whether there is any file with .text|.php extension.

# ls | egrep '.txt|.php'
# Now consider the same example with egrep, here egrep will check for files with either .txt or .php extension. By using egrep we can even search for multiple pattern, files at a time using one command. We can make grep also do the same by escaping the characters.