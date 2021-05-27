# https://www.hackerrank.com/challenges/text-processing-sort-1/problem

sort


# The sort command is frequently used for sorting input in text or TSV formats in various different ways. These ways may be either lexicographical, case insensitive, based on the numeric field only, based on a particular column, etc.

# Sort Options

# The vanilla sort command simply sorts the lines of the input file in lexicographical order.
# The -n option sorts the file on the basis of the numeric fields available if the first word or column in the file is a number.
# The -r option reverses the sorting order to either the reverse of the usual lexicographical ordering or descending order while sorting in numerical mode.
# The -k option is useful while sorting a table of data (tsv, csv etc.) based on a specified column (or columns).
# The -t option is used while specifying a delimiter in a particular file where columns are separated by tabs, spaces, pipes etc.

# Example:

# sort -t'|' -k4 file_name    ==> delimeter by pipe, sort by column number 4
# sort -rt'|' -k4 file_name    ==> delimeter by pipe, sort by column number 4 in reverse order