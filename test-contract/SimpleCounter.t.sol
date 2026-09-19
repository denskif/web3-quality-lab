// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "../contracts/SimpleCounter.sol";
import {Test} from "forge-std/Test.sol";

contract SimpleCounterTest is Test{
    SimpleCounter counter;

    function setUp() public {
        counter = new SimpleCounter();
    }

    function testInitialCount() public view {
        assertEq(counter.count(), 0);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.count(), 1);
    }

    function testAddFive() public {
        counter.add(5);
        assertEq(counter.count(), 5);
    }

    function test_RevertWhen_AddZero() public {
        vm.expectRevert(
            abi.encodeWithSelector(
                SimpleCounter.InvalidAmount.selector,
                0
            )
        );
        counter.add(0);
        assertEq(counter.count(), 0);
    }
}
