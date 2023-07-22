#!/bin/bash

grep 'password.equals' VaultDoorTraining.java | grep -oP '".*?"' | tr -d '"' | sed -e 's/$/}/' | sed -e 's/^/picoCTF{/'
