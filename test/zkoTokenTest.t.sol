// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {DeployZKoToken} from "script/DeployZKoToken.s.sol";
import {ZerachOToken} from "src/ZerachOToken.sol";

contract zkoTokenTest is Test {
    ZerachOToken public zkotoken;
    DeployZKoToken public deployzkotoken;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    uint256 public constant STARTING_BALANCE = 100 ether;

    function setUp() public {
        deployzkotoken = new DeployZKoToken();
        zkotoken = new ZerachOToken(STARTING_BALANCE);

        vm.prank(address(msg.sender));
        zkotoken.transfer(bob, STARTING_BALANCE);
    }

    function testBobBalances() public {
        assertEq(STARTING_BALANCE, zkotoken.balanceOf(bob));
    }
}

