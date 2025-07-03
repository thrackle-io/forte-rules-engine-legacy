// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "./DeployBase.s.sol";
import {HandlerDiamond, HandlerDiamondArgs} from "src/client/token/handler/diamond/HandlerDiamond.sol";

/**
 * @title Deploy ERC20 Handler Diamond Script
 * @dev This script will deploy the ERC20 Handler Diamons.
 */
contract DeployERC20HandlerPt1 is Script, DeployBase {
    /// address and private key used to for deployment
    uint256 privateKey;
    address ownerAddress;
    string name;
    HandlerDiamond applicationCoinHandlerDiamond;

    function run() external {
        privateKey = vm.envUint("DEPLOYMENT_OWNER_KEY");
        ownerAddress = vm.envAddress("DEPLOYMENT_OWNER");
        name = vm.envString("RULE_PROCESSOR_DIAMOND"); // name of the token
        vm.startBroadcast(privateKey);

        applicationCoinHandlerDiamond = createERC20HandlerDiamondPt1(name);

        string memory handlerAddress = vm.toString(address(applicationCoinHandlerDiamond));
        setENVAddress("APPLICATION_ERC20_HANDLER_ADDRESS", handlerAddress);
     
        vm.stopBroadcast();
    }

}