#!/bin/bash
num=500
if [ $num -lt 0 ]
then echo "Negative Number"
elif [ $num -gt 0 ]
then echo "Positive Number"
else
echo "Neither Positive Nor Negative"
fi
