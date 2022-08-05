//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "../RewardingModule.sol";

/// @title OnboardingModule
/// @notice The extension of each DAO that integrates Aut
/// @dev The extension of each DAO that integrates Aut
contract AirdropRewardPlugin is RewardingModule {
    address public override daoExpanderAddress;
}
