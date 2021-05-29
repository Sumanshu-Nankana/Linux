# https://www.hackerrank.com/challenges/text-processing-in-linux-the-sed-command-1/problem


# Method-1
# This works because all test cases not covered in example
# this will fail if First word is 'the' or last word is 'the' (i.e. no space)
sed 's/ the / this /'

# Method-2 
# This is good and will change if first letter or last letter is the
# \< and > in regex world (sed syntax) represents words boundaries. You can use \b too
sed -e 's/\<the\>/this/'

# Method-3
sed -e 's/\bthe\b/this/'

# if we not give space; then it will change 'these' to ==> 'thisse' (which we don't require)

# sed ("stream editor") is a popular tool that enables quick parsing and transformation of text.

# Examples:

# Substitute the first occurrence of 'editor' with 'tool':
# sed -e s/editor/tool/

# Substitute all the occurrences of 'editor' with 'tool':
# sed -e s/editor/tool/g

# Substitute the second occurrence of 'editor' with 'tool':
# sed -e s/editor/tool/2

# Highlight all the occurrences of 'editor' by wrapping them up in brace brackets:
# sed -e s/editor/{\&}/g

# Replacing or substituting string
# sed 's/unix/linux/' file.txt
# Here the "s" specifies the substitution operation. The "/" are delimiters. The "unix" is the search pattern and the "linux" is the replacement string.
# By default, the sed command replaces the first occurrence of the pattern in each line and it won't replace the second, third...occurrence in the line.

# Replacing all the occurrence of the pattern in a line.
# sed 's/unix/linux/g' file.txt
# The substitute flag /g (global replacement) specifies the sed command to replace all the occurrences of the string in the line.

# Replacing from nth occurrence to all occurrences in a line.
# Use the combination of /1, /2 etc and /g to replace all the patterns from the nth occurrence of a pattern in a line. The following sed command replaces the third, fourth, fifth... "unix" word with "linux" word in a line.
# sed 's/unix/linux/3g' file.txt

# Changing the slash (/) delimiter
# sed 's/http:\/\//www/' file.txt

# Replacing string on a specific line number.
# sed '3 s/unix/linux/' file.txt
# The above sed command replaces the string only on the third line

# Replacing string on a range of lines.
# sed '1,3 s/unix/linux/' file.txt
# Here the sed command replaces the lines with range from 1 to 3

# sed '2,$ s/unix/linux/' file.txt
# Here $ indicates the last line in the file. So the sed command replaces the text from second line to last line in the file.

# Deleting lines.
# sed '2 d' file.txt
# You can delete the lines a file by specifying the line number or a range or numbers.

# You can also make the sed command to work as grep -v, just by using the reversing the sed with NOT (!).
# sed -n '/unix/ !p' file.txt

# Transform like tr command
# The sed command can be used to convert the lower case letters to upper case letters by using the transform "y" option.
# sed 'y/ul/UL/' file.txt
# Here u==> U ; l ==> L

