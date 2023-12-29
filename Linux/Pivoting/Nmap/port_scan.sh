#!/bin/bash
proxychains nmap -sT --top-ports 500 -Pn  -v -n 10.10.0.2 2> /dev/null > allPorts