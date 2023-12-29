#!/bin/bash

#Require xclip 
cat allPorts | grep / | grep -vE 'PORT|Read|Starting|Discovered|ProxyChains' | awk '{print $1$2}' FS='/' | sed 's/tcp/,/g' | awk '{print $1}' | tr -d '\n' | xclip -sel clip