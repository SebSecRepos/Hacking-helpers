#!/bin/bash

function ctrl_c(){
    exit 1;
}
trap ctrl_c INT 

while true; do
echo "> "
read file
    curl -s "http://<LFIURL>" | grep "Apply filtros"
done
