- use `ltdis.sh` file to disassemble `static` file
```
$ ./ltdis.sh static
```

- The flag is in `static.ltdis.strings.txt`

- run the One Line Script(OLS) to get the flag
```
$ cat static.ltdis.strings.txt | grep -oE picoCTF{.*?} --color=none
```
