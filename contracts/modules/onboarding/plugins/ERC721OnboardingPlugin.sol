//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "../OnboardingModule.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

/// @title ERC721OnboardingPlugin
/// @notice The extension of each DAO that integrates Aut
/// @dev The extension of each DAO that integrates Aut
contract ERC721OnboardingPlugin is OnboardingModule {

    address public override daoExpanderAddress;
    address erc721Address;
    constructor(address _daoExpanderAddr, address _erc721Address) {
        daoExpanderAddress = _daoExpanderAddr;
        erc721Address = _erc721Address;

    }

    function isOnboarded(address member) public view returns(bool) {
        return IERC721(erc721Address).balanceOf(member) > 0;
    }

    function onboard(address member) public {
        require(false, 'No manual onboarding needed');
    }
}
