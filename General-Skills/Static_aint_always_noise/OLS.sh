#!/bin/bash

cat static.ltdis.strings.txt | grep -oE picoCTF{.*?} --color=none
