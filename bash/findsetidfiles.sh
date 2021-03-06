#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
# The second listing should display after the setuid file list, and be formatted similar to the setuid file list
echo "setgid files:"
echo "============="
# type f : regular files , permission : 2000 , sort -k : sort by key (3 column)
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 3
# Task 2 for the exercise is to modify it to also display the 10 largest files in the system, sorted by their sizes

echo "find 10 Largest files:"
echo "============="

# The listing should include the file name, owner, and size in MBytes and be displayed after the listings of setuid and setgid files

# "MY COMMENTS"
# ls: list the file content, l: file info rwx size etc a : dont remove entries with ".", h : human readable
# sort r : reverse comparisons

find /home/ -type f -exec ls -alh --block-size=M {} \; | sort -hr -k5 | head -n 10 | awk '{print $5, $3, $9}'
