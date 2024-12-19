#!/bin/bash

exiftool ukn_reality.jpg | grep "Attribution URL" | grep -o "[^:]*$" | xargs | base64 -d