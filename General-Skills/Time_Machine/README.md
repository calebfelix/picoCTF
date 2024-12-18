# Time Machine

 ## Description
What was I last working on? I remember writing a note to help me remember...
You can download the challenge files here:
- challenge.zip

## Hints
1. The `cat` command will let you read a file, but that won't help you here!
2. Read the chapter on Git from the picoPrimer [here](https://primer.picoctf.org/#_git_version_control).
3. When committing a file with git, a message can (and should) be included.
## Solution

Run the command the flag will be visible.
```sh
cd drop-in/
git log
```

`flag.txt`
```
picoCTF{t1m3m@ch1n3_d3161c0f}
```
