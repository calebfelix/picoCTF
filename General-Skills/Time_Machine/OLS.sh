#!/bin/bash

# File path to the HEAD logs
LOG_FILE="drop-in/.git/logs/HEAD"

# Extract the picoCTF flag
FLAG=$(grep -o "picoCTF{[^}]*}" "$LOG_FILE")

# Output the flag
echo "$FLAG"