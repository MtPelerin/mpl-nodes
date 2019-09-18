#!/bin/bash

CURRENT_DIR=`pwd`
#ARGS_OPTS="-e VERBOSITY=6"

echo $CURRENT_DIR
sudo docker run -d \
        -h eth-testnet-01 \
        -p 30303:30303 -p 30303:30303/udp -p 8545:8545 -p 8546:8546 \
        -v /data/ethereum/eth-testnet-01:/ethereum \
        -v /data/ethereum/eth-testnet-01/freezer:/freezer \
        -v ~/scripts/:/scripts \
        -e TESTNET=true $ARGS_OPTS \
        -e FREEZER_DIR=/freezer \
        -t sirhill/node-eth

