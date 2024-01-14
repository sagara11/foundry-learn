#!/bin/bash

source .env  # Load environment variables

forge create --private-key $PRIVATE_KEY_MUMBAI \
    --rpc-url $RPC_URL_MUMBAI \
    --etherscan-api-key $API_KEY_MUMBAI \
    --verify \
    src/Counter.sol:Counter

forge test --match-test test_Increment --rpc-url $RPC_URL_MUMBAI