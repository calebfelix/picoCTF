# Easy Peasy
> 40 points 

 ## Description
A one-time pad is unbreakable, but can you manage to recover the flag? (Wrap with picoCTF{}): otp.py
## Hints
<ol>
    <li>Maybe there's a way to make this a 2x pad.</li>
</ol> 

## Solution
- Run `tinker.py`

```python

from pwn import *

KEY_LEN = 50000
MAX_CHUNK = 1000

r = remote("mercury.picoctf.net", 41934)
r.recvuntil("This is the encrypted flag!\n")
flag = r.recvlineS(keepends = False)
log.info(f"Flag: {flag}")
bin_flag = unhex(flag)

counter = KEY_LEN - len(bin_flag)

with log.progress('Causing wrap-around') as p:
    while counter > 0:
        p.status(f"{counter} bytes left")
        chunk_size = min(MAX_CHUNK, counter)
        r.sendlineafter("What data would you like to encrypt? ", "a" * chunk_size)
        
        counter -= chunk_size

r.sendlineafter("What data would you like to encrypt? ", bin_flag)
r.recvlineS()
log.success("The flag: {}".format(unhex(r.recvlineS())))
```

