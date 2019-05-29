#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
echo "Setuid files:"
echo "============="
#find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
# The second listing should display after the setuid file list, and be formatted similar to the setuid file list
echo "setgid files:"
echo "============="
#find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 3
# Task 2 for the exercise is to modify it to also display the 10 largest files in the system, sorted by their sizes
#du: file space, a: display files, r: reverse comparisons
echo "Largest files:"
echo "============="
du -a | sort -n -r | head -n 10
# The listing should include the file name, owner, and size in MBytes and be displayed after the listings of setuid and setgid files
#ls: list the file content, l: file info rwx size etc
ls -l 
