//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


/// @title OnboardingModule
/// @notice The extension of each DAO that integrates Aut
/// @dev The extension of each DAO that integrates Aut
interface OnboardingModule {

    event Onboarded(address member, address daoExpander);

    function daoExpanderAddress() external view returns(address);

    function isOnboarded(address member) external view returns(bool);

    function onboard(address member) external;

}
