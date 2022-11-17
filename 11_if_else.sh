#! /bin/bash
# test file : Evaluate the status of the file
FILE=~/.bashrc
if [ -e "$FILE" ]; then
    if [ -f "$FILE" ]; then
        echo "$FILE is a regular file."
    fi
    if [ -d "$FILE" ]; then
        echo "$FILE is a directory."
    fi
    if [ -r "$FILE" ]; then
        echo "$FILE is a readable."
    fi
    if [ -w "$FILE" ]; then
        echo "$FILE is a writable."
    fi
    if [ -x "$FILE" ]; then
        echo "$FILE is an executable."
    fi
else
    echo "$FILE doesn't exist."
    exit 1
fi
exit