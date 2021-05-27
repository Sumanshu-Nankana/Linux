# https://www.hackerrank.com/challenges/text-processing-sort-5/problem

sort -rnt$'\t' -k2


# reverse order -> r
# second column -> k2
# -t '\t' => tab separated
# -n (numeric column)


# Below will not work
# we need to put '$' in front of '\t' (tab)
# sort -rnt'\t' -k2  ===> will NOT works