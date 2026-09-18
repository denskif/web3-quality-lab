// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleCounter {
    uint256 public count;

    function increment() external {
        count = count + 1;
    }

    function add(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        count = count + amount;
    }

    function getCount() external view returns (uint256) {
        return count;
    }
}
