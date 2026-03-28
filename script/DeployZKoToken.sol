// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

import {Script} from "forge-std/Script.sol";
import {ZerachOToken} from "src/ZerachOToken.sol";

contract DeployZKoToken is Script {

    uint256 public constant INITIAL_SUPPLY = 1000 ether:
    
    function run() external {
        vm.startBroadcast();
        new ZerachOtoken(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}
