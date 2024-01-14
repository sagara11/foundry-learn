#!/bin/bash

source .env  # Load environment variables

forge script CounterScript  \
    --sig 'run()' \
    --rpc-url $RPC_URL_MUMBAI \
    --private-key $PRIVATE_KEY_MUMBAI \
    --broadcast

forge test --fork-url $RPC_URL_MUMBAI \
    --match-test test_Increment \