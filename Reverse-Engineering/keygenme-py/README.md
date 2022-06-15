```python
if key[i] != hashlib.sha256(username_trial).hexdigest()[4]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[5]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[3]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[6]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[2]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[7]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[1]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[8]:
            return False
```

- Print out all the values on this part of the `keygenme-trial.py` 

use this line
```python
print(hashlib.sha256(username_trial).hexdigest()[4] +hashlib.sha256(username_trial).hexdigest()[5]+hashlib.sha256(username_trial).hexdigest()[3]+hashlib.sha256(username_trial).hexdigest()[6]+hashlib.sha256(username_trial).hexdigest()[2]+hashlib.sha256(username_trial).hexdigest()[7]+hashlib.sha256(username_trial).hexdigest()[1]+hashlib.sha256(username_trial).hexdigest()[8])


#output:
e584b363
```

- That is missing part of the flag `picoCTF{1n_7h3_|<3y_of_xxxxxxxx}`

- And subing to the flag we get `picoCTF{1n_7h3_|<3y_of_e584b363}`


