#!/bin/bash

strings cat.jpg | less | grep -oE --color=none cGljb0NURnt0aGVfbTN0YWRhdGFfMXNfbW9kaWZpZWR9 | base64 -d
