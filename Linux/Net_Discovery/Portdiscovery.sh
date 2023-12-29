#!/bin/bash

seq 1 65535 | xargs -P 50 -I {} timeout 1 bash -c 'echo "" > /dev/tcp/192.168.0.5/{} & > /dev/null && echo "{} --> Open"' 2>/dev/null