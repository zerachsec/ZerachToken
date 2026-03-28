// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract ZerachOToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("zerachToken", "ZK") {
        _mint(msg.sender, initialSupply);
    }
}
