#!/bin/bash

test() {
    expected="$1"

    gcc -static -o number  number.s
    ./number
    actual="$?"

    if [ "$actual" != "$expected" ]; then
        echo "want: $expected, but got: $actual"
        exit 1
    fi
}

test 100

echo OK
