#!/bin/bash
if [ $# -eq 1 ]; then
getent group "$1" | awk -F: '{print $4}' |tr ',' '\n'| sort -d   
if [ "$?" != "0" ]; then
echo "something wrong" 
fi
else echo "something wrong"
fi
