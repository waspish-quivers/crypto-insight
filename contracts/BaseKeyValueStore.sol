// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseKeyValueStore {
    mapping(address => string) private values;

    event ValueSet(address indexed user, string value);

    function setValue(string calldata value) external {
        values[msg.sender] = value;
        emit ValueSet(msg.sender, value);
    }

    function getValue(address user) external view returns (string memory) {
        return values[user];
    }
}
