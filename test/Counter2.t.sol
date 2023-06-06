// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter2.Sol";

contract Counter2Test is Test {
    Counter2 public counter2;

    function setUp() public {
        counter2 = new Counter2();
        counter2.setNumber(0);
    }

    function testIncrement() public {
        counter2.increment();
        assertEq(counter2.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        counter2.setNumber(x);
        assertEq(counter2.number(), x);
    }
}
