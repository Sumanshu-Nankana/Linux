# https://www.hackerrank.com/challenges/text-processing-in-linux-the-grep-command-5/problem

grep '\([0-9]\) *\1'

# Takes a digit ([0-9]), remembers it (\...\), looks for zero or more spaces ( *) followed by a repeat of the stored digit (\1).
# There is a space before '*'  - because * means - any number of preceding characters
# where preceding here is 'space'

# backreferencing
# https://www.grymoire.com/Unix/Regular.html#uh-10

# Another pattern that requires a special mechanism is searching for repeated words. The expression "[a-z][a-z]" will match any two lower case letters. If you wanted to search for lines that had two adjoining identical letters, the above pattern wouldn't help. You need a way of remembering what you found, and seeing if the same pattern occurred again. You can mark part of a pattern using "\(" and "\)". You can recall the remembered pattern with "\" followed by a single digit. Therefore, to search for two identical letters, use "\([a-z]\)\1".