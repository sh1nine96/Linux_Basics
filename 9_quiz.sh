#!/bin/sh
san_function1() {
a=5
echo "This is the first function"
san_function2
}
san_function2() {
echo "This is the second function"
san_function3
}
san_function3() {
echo "This is the third function"
}
san_function1
exit 0