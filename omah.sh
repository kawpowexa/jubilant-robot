#!/bin/bash

POOL=ethash.unmineable.com:3333
WALLET=BTT:TMoY6tAtNEAq32F7aAdXJb6o6fxYm2Nhhm.$ip#d300-ysxq

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@ --ethstratum ETHPROXY
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@ --ethstratum ETHPROXY
done
