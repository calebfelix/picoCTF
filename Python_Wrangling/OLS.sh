#!/bin/bash

cat pw.txt | python3 ende.py -d flag.txt.en | grep -oE picoCTF{.*?} --color=none


