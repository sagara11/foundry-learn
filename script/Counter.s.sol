// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {
        counter = Counter(0x2322044A4b831aD89bC9eD8f46dba125E7E9cA2C);
    }

    function run() public {
        vm.broadcast();
        counter.increment();
    }
}
