//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/Counters.sol";

/// @title Roles
/// @notice
/// @dev
contract Roles {
    event RoleAdded(uint256 id, string name);

    using Counters for Counters.Counter;
    Counters.Counter private roleCounter;
    mapping(uint256 => string) roleIDToName;

    function addRole(string calldata name) public returns (uint256) {
        roleCounter.increment();
        uint256 id = roleCounter.current();
        roleIDToName[id] = name;
        emit RoleAdded(id, name);
        return id;
    }
}
