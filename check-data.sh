#!/bin/bash
#for i in `cat list-audit`;do ssh $i cat /root/.ssh/authorized_keys | grep -A 2 ^# ;done > file-out
file=/var/tmp/authorized_keys
pattern='^#'
if [ -f $file ]; then
    lines=`grep -A 2 "$pattern" $file`
# Case 1
    for x in $lines; do   # <--- isn't this an array
        echo "$x"                                                                                                                                                                                                                                                                
        done
# Case 2
    while read -r line_a; do
        echo "$line_a"
        done <<< "$lines"
fi
