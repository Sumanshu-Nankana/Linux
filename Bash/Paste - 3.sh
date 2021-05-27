# https://www.hackerrank.com/challenges/paste-3/problem

# Method-1
paste -s

# Method-2  ; using translate
tr '\n' '\t'


# https://www.theunixschool.com/2012/07/10-examples-of-paste-command-usage-in.html

# paste command without any options is as good as the cat command when operated on a single file.
# paste file_name

# Join all lines in a file:
# paste -s file_name
# -s option of paste joins all the lines in a file. Since no delimiter is specified, default delimiter tab is used to separate the columns.

# Join all lines using the comma delimiter:
# paste -d, -s file_name
# d option is used to specify the delimiter. Using this -d and -s combination, all the lines in the file get merged into a single line.

# Merge a file by pasting the data into 2 columns:
# paste - - file_name
# The '-' reads a line from the standard input. Two '-' reads 2 lines and pastes them side by side.

# Merge a file by pasting the data into 2 columns using a colon separator:
# paste -d':' - - < file1