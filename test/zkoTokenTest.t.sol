// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {ZerachOToken} from "src/ZerachOToken.sol";

contract ZerachOTokenTest is Test {
    ZerachOToken public zkoToken;

    address bob = makeAddr("bob");
    uint256 public constant INITIAL_SUPPLY = 1000 ether;
    uint256 public constant TRANSFER_AMOUNT = 100 ether;

    function setUp() public {
        zkoToken = new ZerachOToken(INITIAL_SUPPLY);
    }

    function testTokenNameIsCorrect() public view {
        assertEq(zkoToken.name(), "zerachToken");
    }

    function testTokenSymbolIsCorrect() public view {
        assertEq(zkoToken.symbol(), "ZK");
    }

    function testInitialSupplyIsMintedToDeployer() public view {
        assertEq(zkoToken.totalSupply(), INITIAL_SUPPLY);
        assertEq(zkoToken.balanceOf(address(this)), INITIAL_SUPPLY);
    }

    function testBobStartsWithZeroBalance() public view {
        assertEq(zkoToken.balanceOf(bob), 0);
    }

    function testTransferWorks() public {
        zkoToken.transfer(bob, TRANSFER_AMOUNT);

        assertEq(zkoToken.balanceOf(bob), TRANSFER_AMOUNT);
        assertEq(zkoToken.balanceOf(address(this)), INITIAL_SUPPLY - TRANSFER_AMOUNT);
    }
}
