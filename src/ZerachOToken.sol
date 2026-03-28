// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.25;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract Zerachtoken is ERC20 {
    constructor(uint256 initialSuply) ERC20("zerachToken", "ZK") {
        _mint(msg.sender, initialSuply);
    }
}
