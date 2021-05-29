# https://www.hackerrank.com/challenges/awk-1/problem

awk '{if ($2 =="" || $3 == "" || $4 == "") print "Not all scores are available for",$1;}'


# -----------------------------------------------------
# Print all content of a file
# awk '{print}' file_name

# By default - awk consider delimeter as white-spaces

# Print the first column of every line
# awk '{print $1}' file_name

# Print the second column of every line
# awk '{print $2}' file_name

# Print the first & second column of every line
# awk '{print $1,$2}' file_name

# Print the first & second column of every line, but concatenate it
# So instead of comma(,) we will use dot(.)
# awk '{print $1.$2}' file_name

# return those lines which contains word 'test' - it is case-sensitive
# awk '/test/ {print $1.$2}' file_name

# return those lines which contains atleast one lower case letter
# awk '/[a-z]/ {print $1.$2}' file_name

# return those lines which contains atleast one number b/w 0 to 9
# awk '/[0-9]/ {print $1.$2}' file_name

# return those lines which starts with a number
# awk '/^[0-9]/ {print $1.$2}' file_name

# return those lines which ends with a number
# awk '/[0-9]$/ {print $1.$2}' file_name

# NF is a built in variable which represents total number of fields in a record.

# Initialization and Final Action
# Awk has two important patterns which are specified by the keyword called BEGIN and END.
# $ awk 'BEGIN {print "Name\tDesignation\tDepartment\tSalary";}
# > {print $2,"\t",$3,"\t",$4,"\t",$NF;}
# > END{print "Report Generated\n--------------";
# > }' employee.txt
# Name	Designation	Department	Salary
# Thomas 	 Manager 	 Sales 	         $5,000
# Jason 	 Developer 	 Technology 	 $5,500
# Sanjay 	 Sysadmin 	 Technology 	 $7,000
# Nisha 	 Manager 	 Marketing 	 $9,500
# Randy 	 DBA 	 	 Technology 	 $6,000
# Report Generated
# --------------

# Find the employees who has employee id greater than 200
# awk '$1 >200' employee.txt
# $1 (is column) and lets suppose first column in file contains the employee ids

# Print the list of employees in Technology department
# awk '$4 ~/Technology/' employee.txt
# $4 is the 4th column
# lets suppose 4th column contains the department info
# Operator ~ is for comparing with the regular expressions

# Print number of employees in Technology department
# awk 'BEGIN { count=0;}
# $4 ~ /Technology/ { count++; }
# END { print "Number of employees in Technology Dept =",count;}' employee.txt

# if Example: Check all the marks are exist
# $ awk '{
# if ($3 =="" || $4 == "" || $5 == "")
# 	print "Some score for the student",$1,"is missing";'
# }' student-marks
# Lets suppose 3rd, 4th and 5th column contains the marks
# and 1st column contains the student name

# If Else Example: Generate Pass/Fail Report based on Student marks in each subject
# $ awk '{
# if ($3 >=35 && $4 >= 35 && $5 >= 35)
# 	print $0,"=>","Pass";
# else
# 	print $0,"=>","Fail";
# }' student-marks
# $0 ===> means to print whole line

