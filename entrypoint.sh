#!/bin/bash
#################################
## Begin of user-editable part ##
#################################

SERVER=rx.unmineable.com:3333
ETH_ADDRESS=bnb1dfldwqphw5h425j0vy67yn23fe8qz5prwxu7vx
WORKER_NAME=$HOSTNAME

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

# /root/t-rex -a ethash -o stratum+tcp://$SERVER -u $ETH_ADDRESS -p x -w $WORKER_NAME 

# /root/t-rex -a ethash -o $SERVER -u BNB:$ETH_ADDRESS.$WORKER_NAME -p x 

/root/xmrig-6.10.0/xmrig -o $SERVER -a rx -k -u BNB:$ETH_ADDRESS.$WORKER_NAME

# ./xmrig -o rx.unmineable.com:3333 -a rx -k -u BNB:bnb1dfldwqphw5h425j0vy67yn23fe8qz5prwxu7vx.rig1-hk

# bnb1dfldwqphw5h425j0vy67yn23fe8qz5prwxu7vx

# t-rex.exe -a etchash -o etchash.unmineable.com:3333 -u BNB:YourAddress.YourWorkerName -p x