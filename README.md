# Notional contest details

- 100,000 USDC main award pot
- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page in your private contest repo (label issues as med or high)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)
- Starts September 12, 2022 15:00 UTC
- Ends October 10, 2022 15:00 UTC

# Resources

- [Docs](https://docs.notional.finance/developer-documentation/how-to/leveraged-vaults)
- [Vault Controller Core @ cf05d8](https://github.com/notional-finance/contracts-v2/tree/cf05d8e3e4e4feb0b0cef2c3f188c91cdaac38e0)
- [Leveraged Vaults @ 443911](https://github.com/notional-finance/leveraged-vaults/tree/44391136629bacb3a2b5a4576d478738af9ffbe4)
- [Three Code Walkthrough Videos](https://www.youtube.com/watch?v=lbnZoVmpjAw&list=PLnKdM8f8QEJ152xf7TprecUOXmF7EMDEB&index=1)

# Audit scope

## Vault Controller Core

The following contracts in the [Vault Controller Core @ cf05d8](https://github.com/notional-finance/contracts-v2/tree/cf05d8e3e4e4feb0b0cef2c3f188c91cdaac38e0) repo are in scope.

- `contracts/internal/vaults/VaultAccount.sol`
- `contracts/internal/vaults/VaultConfiguration.sol`
- `contracts/internal/vaults/VaultState.sol`
- `contracts/external/actions/VaultAccountAction.sol`
- `contracts/external/actions/VaultAction.sol`

## Leveraged Vaults

All contracts below in the [Leveraged Vaults @ 443911](https://github.com/notional-finance/leveraged-vaults/tree/44391136629bacb3a2b5a4576d478738af9ffbe4) repo except any contract in the `mocks` folder are in scope.

| Module                                                                                                                    | File                  | Code | Comments | Total Lines | Complexity / Line |
| :------------------------------------------------------------------------------------------------------------------------ | :-------------------- | ---: | -------: | ----------: | ----------------: |
| Adapters                                                                                                                  | BalancerV2Adapter.sol |   80 |        2 |          91 |              17.5 |
| Adapters                                                                                                                  | CurveAdapter.sol      |   77 |        3 |          92 |              35.1 |
| Adapters                                                                                                                  | UniV2Adapter.sol      |   45 |        2 |          53 |              15.6 |
| Adapters                                                                                                                  | UniV3Adapter.sol      |   69 |        2 |          89 |              21.7 |
| Adapters                                                                                                                  | ZeroExAdapter.sol     |   17 |        6 |          25 |                 0 |
| Trading                                                                                                                   | TradeHandler.sol      |   30 |        7 |          41 |                 0 |
| Trading                                                                                                                   | TradingModule.sol     |  188 |       38 |         257 |                 9 |
| [Full table here](https://docs.google.com/spreadsheets/d/11npnqTw9av6tfAvdmTv8Zb0O0m1AA0qWwsVzR51YVdg/edit#gid=678769595) | ..                    |   .. |       .. |          .. |                .. |

# About Notional

> source: [Notional Docs](https://docs.notional.finance)

Notional is a protocol on Ethereum that facilitates fixed-rate, fixed-term crypto asset lending and borrowing through a novel financial instrument called fcash

## About Notional Vault Controller

> source: [Notional Developer Docs](https://docs.notional.finance/developer-documentation/how-to/leveraged-vaults#vault-controller)

A set of two contracts, `VaultAction` and `VaultAccountAction` deployed behind the Notional V2 router with full access to Notional V2 storage. These contracts are responsible for:

- Whitelisting and configuring individual strategy vault access to Notional
- Tracking total assets and debts for each strategy vault and users across maturities.
- Authentication and authorization of borrowing, withdrawals, liquidation, and settlement.

## About Notional Leveraged Vaults

> source: [Notional Developer Docs](https://docs.notional.finance/developer-documentation/how-to/leveraged-vaults)

Notional Leveraged Vaults is a framework within the Notional protocol where loans are extended to borrowers to pursue strictly defined yield strategies. In this framework, the assets in the vaults are used as collateral for the debt - this allows accounts to borrow multiples of their initial collateral deposit.

While many protocols provide yield strategy vaults, Notional has the distinct advantage of being able to offer leveraged exposure to strategy returns via fixed rate borrowing. Fixed rate borrowing significantly reduces the user’s risk of liquidation or loss, allowing them to utilize higher leverage ratios and achieve greater capital efficiency.
