#!/bin/bash

./ceaser-cipher.sh `cat enc_flag | base64 -d | sed "s/^b'//;s/'$//" | base64 -d | sed "s/^b'//;s/'$//"` 19
