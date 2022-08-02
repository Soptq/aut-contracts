//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/Counters.sol";

/// @title Roles
/// @notice
/// @dev
contract RoleSets {
    event RoleSetAdded(uint256 id);

    struct RoleSet {
        uint256 role1ID;
        uint256 role2ID;
        uint256 role3ID;
    }

    using Counters for Counters.Counter;
    Counters.Counter private roleSetCounter;
    mapping(uint256 => RoleSet) roleSets;

    function addRoleSet(
        RoleSet calldata roleset
    ) public returns (uint256) {
        roleSetCounter.increment();
        uint256 id = roleSetCounter.current();
        roleSets[id] = roleset;
        emit RoleSetAdded(id);
        return id;
    }

    function exists(uint roleSetID) public view returns(bool) {
        return roleSetCounter.current() > roleSetID;
    }
}
