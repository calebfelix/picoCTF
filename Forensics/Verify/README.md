# Verify

## Description

People keep trying to trick my players with imitation flags. I want to make sure they get the real thing! I'm going to provide the SHA-256 hash and a decrypt script to help you know that my flags are legitimate.
Additional details will be available after launching your challenge instance.

## Hints

1. Checksums let you tell if a file is complete and from the original distributor. If the hash doesn't match, it's a different file.
2. You can create a SHA checksum of a file with `sha256sum <file>` or all files in a directory with `sha256sum <directory>/*`.
3. Remember you can pipe the output of one command to another with |. Try practicing with the 'First Grep' challenge if you're stuck!

## Solution

- Connect to the system with the password.
- Checksum: b09c99c555e2b39a7e97849181e8996bc6a62501f0149c32447d8e65e205d6d2
- To decrypt the file once you've verified the hash, run `./decrypt.sh files/<file>`.

- Run 
```bash
ctf-player@pico-chall$ sha256sum files/* | grep "b09c99c555e2b39a7e97849181e8996bc6a62501f0149c32447d8e65e205d6d2"
b09c99c555e2b39a7e97849181e8996bc6a62501f0149c32447d8e65e205d6d2  files/
ctf-player@pico-chall$ ./decrypt.sh files/451fd69b
picoCTF{trust_but_verify_451fd69b}

```

`flag.txt`

```
picoCTF{trust_but_verify_451fd69b}
```
