#!/bin/bash
if [ $# -eq 1 ]; then
if test -f "$1"; then 
ls -lct | nawk '$11 ~ /'"$1"'/{print $9}'
 else
        echo "something wrong"
fi
else echo "something wrong"
fi 
