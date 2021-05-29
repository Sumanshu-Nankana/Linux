# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-1/problem

# Method-1
grep ' the '

# Method-2
grep -w the

# if we will search with 
# grep the
# or
# grep 'the'
# both will not work, because , it search those lines as well , where 'there', 'these' also exists
# and the not exists..But we need only those lines where we have 'the'


# The basic usage of grep command is to search for a specific string in the specified file as shown below.
# grep "literal_string" filename

# Case insensitive search using grep -i
# grep -i "string" FILE
# So it matches all the words such as “the”, “THE” and “The” 

# Match regular expression in files
# grep "REGEX" filename     
# example:
# grep "lines.*empty" demo_file
# In the following example, it searches for all the pattern that starts with “lines” and ends with “empty” with anything in-between. i.e To search “lines[anything in-between]empty” in the demo_file.

# From documentation of grep: A regular expression may be followed by one of several repetition operators:

# ? The preceding item is optional and matched at most once.
# * The preceding item will be matched zero or more times.
# + The preceding item will be matched one or more times.
# {n} The preceding item is matched exactly n times.
# {n,} The preceding item is matched n or more times.
# {,m} The preceding item is matched at most m times.
# {n,m} The preceding item is matched at least n times, but not more than m times.

# Checking for full words, not for sub-strings using grep -w
# grep -i "is" demo_file

#  Displaying lines before/after/around the match using grep -A, -B and -C
# When doing a grep on a huge file, it may be useful to see some lines after the match. You might feel handy if grep can show you not only the matching lines but also the lines after/before/around the match.

# grep -A <N> "string" FILENAME
# Display N lines after match
# -A is the option which prints the specified N lines after the match as shown below.

# Highlighting the search using GREP_OPTIONS
# As grep prints out lines from the file by the pattern / string you had given, if you wanted it to highlight which part matches the line, then you need to follow the following way.

# export GREP_OPTIONS='--color=auto' GREP_COLOR='100;8'
# grep 'string' demo_file

# Searching in all files recursively using grep -r
# grep -r "ramesh" *
# The following example will look for the string “ramesh” in all the files in the current directory and all it’s subdirectory.

#  Invert match using grep -v
# grep -v "go" demo_text
# This example will display all the lines that did not match the word “go”.

# Counting the number of matches using grep -c
# grep -c "pattern" filename

# Display only the file names which matches the given pattern using grep -l
# grep -l this demo_*

# Show line number while displaying the output using grep -n
# grep -n "go" demo_text

# Show the position of match in the line
# grep -o -b "pattern" file