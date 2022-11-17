#! /bin/bash
#test-string: evaluate the value of string
ANSWER=maybe
if [ -z "$ANSWER" ]; then
    echo "There is no answer" >&2
    exit 1
fi
if [ "$ANSWER" == "yes" ]; then
    echo "the answer is yes"
elif [ "$ANSWER" == "no" ]; then
    echo "the answer is no"
elif [ "$ANSWER" == "maybe" ]; then
    echo "the answer is maybe"
else
    echo "the answer is unknown"
fi