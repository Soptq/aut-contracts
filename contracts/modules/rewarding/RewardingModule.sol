//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


/// @title OnboardingModule
/// @notice The extension of each DAO that integrates Aut
/// @dev The extension of each DAO that integrates Aut
interface RewardingModule {

    event Rewarded(address member, uint reward);

    function daoExpanderAddress() external view returns(address);

}
