#!/bin/bash

#Using chisel
gobuster dir -u http://10.10.0.2 --add-slash --proxy socks5://127.0.0.1:1080 -w /usr/share/SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt -b 404,400,500 -t 100