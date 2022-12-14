// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.7.6;

interface INoteERC20 {
    function symbol() external view returns (string memory);
    function getPriorVotes(address account, uint256 blockNumber) external view returns (uint96);
}
