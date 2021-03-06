#!/bin/bash

CURRENT_DIR=`pwd`
#ARGS_OPTS="-e VERBOSITY=6"

echo $CURRENT_DIR
sudo docker run -d \
        -h eth-testnet-01 \
        -p 30303:30303 -p 30303:30303/udp -p 8545:8545 -p 8546:8546 \
        -v /data/ethereum/eth-testnet-01:/ethereum \
        -e NETWORK=ropsten $ARGS_OPTS \
        -t sirhill/node-eth

