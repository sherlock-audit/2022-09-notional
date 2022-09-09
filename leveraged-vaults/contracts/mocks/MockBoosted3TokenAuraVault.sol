// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import {AuraVaultDeploymentParams} from "../vaults/balancer/BalancerVaultTypes.sol";
import {Boosted3TokenAuraVault} from "../vaults/Boosted3TokenAuraVault.sol";
import {NotionalProxy} from "../../interfaces/notional/NotionalProxy.sol";

contract MockBoosted3TokenAuraVault is Boosted3TokenAuraVault {
    constructor(
        NotionalProxy notional_, 
        AuraVaultDeploymentParams memory params
    ) Boosted3TokenAuraVault(notional_, params) {
    }

    function convertStrategyToUnderlying(
        address account,
        uint256 strategyTokenAmount,
        uint256 maturity
    ) public view override returns (int256 underlyingValue) {
        return super.convertStrategyToUnderlying(account, strategyTokenAmount, maturity);
    }
}
