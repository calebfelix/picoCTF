#!/bin/bash

cat initial.txt | python -c 'import sys; print sys.stdin.read().decode("rot13")' | grep -oE picoCTF{.*?} --color=none 
