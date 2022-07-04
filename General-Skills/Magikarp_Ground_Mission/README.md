# Magikarp Ground Mission
> 30 points 

 ## Description
Do you know how to move between directories and read files in the shell? Start the container, \`ssh\` to it, and then \`ls\` once connected to begin. Login via \`ssh\` as \`ctf-player\` with the password, \`ee388b88\`
## Hints
<ol>
    <li>Finding a cheatsheet for bash would be really helpful!</li>
</ol> 

## Solution

```console
ctf-player@pico-chall$ ls
1of3.flag.txt  instructions-to-2of3.txt
ctf-player@pico-chall$ cat instructions-to-2of3.txt 
Next, go to the root of all things, more succinctly `/`
ctf-player@pico-chall$ cat 1of3.flag.txt 
picoCTF{xxsh_
ctf-player@pico-chall$ cd /
ctf-player@pico-chall$ ls
2of3.flag.txt  dev   instructions-to-3of3.txt  media  proc  sbin  tmp
bin	       etc   lib		       mnt    root  srv   usr
boot	       home  lib64		       opt    run   sys   var
ctf-player@pico-chall$ cat 2of3.flag.txt 
0ut_0f_\/\/4t3r_
ctf-player@pico-chall$ cat instructions-to-3of3.txt 
Lastly, ctf-player, go home... more succinctly `~`
ctf-player@pico-chall$ cd ~
ctf-player@pico-chall$ ls
3of3.flag.txt  drop-in
ctf-player@pico-chall$ cat 3of3.flag.txt 
3ca613a1}

```
`flag.txt`
```
picoCTF{xxsh_0ut_0f_\/\/4t3r_3ca613a1}
```
