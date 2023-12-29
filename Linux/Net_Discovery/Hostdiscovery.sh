#!/bin/bash

seq 0 254 | xargs -P 50 -I {} timeout 1 bash -c 'ping -c 1 192.168.0.{} & > /dev/null && echo "192.168.0.{} Activo"' 2>/dev/null