#!/bin/bash
proxychains nmap -sCVT -p22,53,80,110,143,10001  10.10.0.2 -n -Pn 2>/dev/null > targeted 
