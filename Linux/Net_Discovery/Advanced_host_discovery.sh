#!/bin/bash

allowedAdapters=$(ip -o link show | awk '{print $2}' | cut -d':' -f1)

#Network iface validation (First param)
echo $allowedAdapters | grep $1 &>/dev/null                                         
if [[ $? != 0 ]]; then echo -e "\n[!] Invalid network interfaces | arp.sh <interface>\n"; exit 1; fi

adapter=$1
baseNetParams=$(ip a | grep $1 | tail -n 1 | awk '{print $2}' )


#Network params obtained ( netWorkid, ip, netmask )
networkId=$(netstat -nr | grep -E "$adapter" | awk '{print $1}' | grep -v '0.0.0.0' )
ip=$(echo $baseNetParams | cut -d "/" -f1)
netmask=$(echo $baseNetParams | cut -d "/" -f2)


# Total hosts calculation based in netmask prefix
less=$((32 - $netmask))
pot=$(echo -e $((2**$less))  )
totalhosts=$(echo -e $(($pot - 3)) )

#Create arp table file
touch ./table.tmp
tableFile="table.tmp"



IFS='.' read a b c d <<< $networkId         #Divide network id in 4 variables
((d=$(echo $networkId | cut -d "." -f4 )))  #First segment number in network id

processCounter=0                            #Limit process      

for host in $(seq 0  $totalhosts ); do      # Calculating possible IP addresses based on the subnet mask

    if (( $processCounter > 50 )); then
        processCounter=0
        wait
    fi

    ((processCounter++))

        ((d++))                         #d variable is first segment
        if ((d > 255)); then
            d=0
            ((c++))

            if ((c > 255));then         #c variable is second segment
                c=0
                ((b++))

                if ((b > 255));then
                    b=0                  #b variable is third segment
                    ((a++))              #a variable is last segment
                    
                fi  
            fi  
        fi


        ip="$a.$b.$c.$d"
        (timeout 0.5 ping -c 1 $ip | grep 'bytes from' | awk '{print $4}' | sed 's/:/ Active/g') &

done