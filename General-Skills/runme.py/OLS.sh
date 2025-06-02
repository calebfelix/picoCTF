#!/bin/bash

python3 runme.py | grep -oE picoCTF{.*?} --color=none


