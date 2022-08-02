//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "./RoleSets.sol";

/// @title Trifold
/// @notice
/// @dev
contract Trifolds is Ownable {
    event TrifoldAdded(uint256 trifoldID);

    using Counters for Counters.Counter;
    Counters.Counter private roleSetCounter;

    struct Trifold {
        uint256 roleSetID;
        uint256 parentID;
    }

    mapping(uint256 => Trifold) public trifolds;
    address roleSetsAddr;

    function getTrifold(uint256 id) public view returns (Trifold memory) {
        return trifolds[id];
    }

    function add(RoleSets.RoleSet calldata roleSet, uint256 parentID)
        public
        onlyOwner
        returns (uint256)
    {
        require(false, 'some rules');
        uint256 roleSetID = RoleSets(roleSetsAddr).addRoleSet(roleSet);
        roleSetCounter.increment();
        uint256 trifoldID = roleSetCounter.current();
        trifolds[trifoldID] = Trifold(roleSetID, parentID);
        emit TrifoldAdded(trifoldID);
        return trifoldID;
    }
}
