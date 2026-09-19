// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleCounter {
    error InvalidAmount(uint256 amount);

    uint256 public count;

    function increment() external {
        count = count + 1;
    }

    function add(uint256 amount) external {
        if (amount == 0) {
            revert InvalidAmount(amount);
        }

        count = count + amount;
    }

    function getCount() external view returns (uint256) {
        return count;
    }
}
