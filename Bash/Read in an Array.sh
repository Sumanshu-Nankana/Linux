# https://www.hackerrank.com/challenges/bash-tutorials-read-in-an-array/problem

# Method-1
paste -s

# But this is array-problem
# So better solve using array

i=0
while read line
do
    array[$i]=$line
    ((i+=1))
done

echo ${array[@]}


# https://www.thegeekstuff.com/2010/06/bash-array-tutorial/
# --------------------------------------------

# Declaring an Array and Assigning values
# In bash, array is created automatically when a variable is used in the format like,
# name[index]=value
# name is any name for an array
# index could be any number or expression that must evaluate to a number greater than or equal to zero.You can declare an explicit array using declare -a arrayname.
# To access an element from an array use curly brackets like ${name[index]}.

# $ cat arraymanip.sh
# #! /bin/bash
# Unix[0]='Debian'
# Unix[1]='Red hat'
# Unix[2]='Ubuntu'
# Unix[3]='Suse'

# echo ${Unix[1]}

# $./arraymanip.sh
# Red hat

# ----------------------------------------------------

# Initializing an array during declaration
# declare -a arrayname=(element1 element2 element3)
# declare -a Unix=('Debian' 'Red hat' 'Red hat' 'Suse' 'Fedora');

# --------------------------------------------------------
# Print the Whole Bash Array
# There are different ways to print the whole elements of the array. If the index number is @ or *, all members of an array are referenced. You can traverse through the array elements and print it, using looping statements in bash.
# echo ${Unix[@]}

# --------------------------------------------------------
# Length of the Bash Array
# We can get the length of an array using the special parameter called $#.
# ${#arrayname[@]} gives you the length of the array.
# declare -a Unix=('Debian' 'Red hat' 'Suse' 'Fedora');
# echo ${#Unix[@]} #Number of elements in the array
# echo ${#Unix}  #Number of characters in the first element of the array.i.e Debian

# --------------------------------------------------------------
# Length of the nth Element in an Array
# echo ${#Unix[3]} # length of the element located at index 3 i.e Suse

# --------------------------------------------------------------
# Extraction by offset and length for an array
# The following example shows the way to extract 2 elements starting from the position 3 from an array called Unix.
# echo ${Unix[@]:3:2}
# The above example returns the elements in the 3rd index and fourth index. Index always starts with zero.

# ------------------------------------------------------------------
# Search and Replace in an array elements
# Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
# echo ${Unix[@]/Ubuntu/SCO Unix}
# In this example, it replaces the element in the 2nd index ‘Ubuntu’ with ‘SCO Unix’. But this example will not permanently replace the array content.

# -----------------------------------------------------------------
# Add an element to an existing Bash Array
# Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
# Unix=("${Unix[@]}" "AIX" "HP-UX")
# echo ${Unix[7]} ===> output AIX

# -----------------------------------------------------------------
# Remove an Element from an Array
# Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
# unset Unix[3]

# ------------------------------------------------------------------
# Concatenation of two Bash Arrays
# Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
# Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');

# UnixShell=("${Unix[@]}" "${Shell[@]}")
# echo ${UnixShell[@]}