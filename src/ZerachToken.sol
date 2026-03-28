// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

contract ZerachToken {
    // string public name;
    // string public symbol;

    // constructor(string memory _name, string memory _symbol) {
    //     _name = name;
    //     _symbol = symbol;
    // }

    mapping(address => uint256) private balances;

    function name() public pure returns (string memory) {
        return "Zer4chToken";
    }

    function symbol() public pure returns (string memory) {
        return "ZT";
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }

    function transfer(address _to, uint256 _amount) public {
        uint256 previousBalances = balanceOf(msg.sender) + balanceOf(_to);
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
        require(balanceOf(msg.sender) + balanceOf(to) == previousBalances);
    }
}
