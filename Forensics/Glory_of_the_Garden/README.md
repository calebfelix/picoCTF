# Glory of the Garden
> 50 points 

## Description
This garden contains more than it seems.
## Hints
<ol>
    <li>What is a hex editor?</li>
</ol> 

## Solution
```
strings garden.jpg | grep -oE picoCTF{.*?} --color=none
```

`flag.txt`
```
picoCTF{more_than_m33ts_the_3y33dd2eEF5}
```
