// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {ZyroCatToken} from "../src/ZyroCatToken.sol";

contract ZyroCatTokenTest is Test {
    ZyroCatToken token;

    function setUp() public {
        token = new ZyroCatToken();
    }

    // ------------------------
    // Test Cases for
    function test_TokenDetails() public {
        assertEq(token.name(), "ZyroCatToken");
        assertEq(token.symbol(), "ZYRO");
    }

    function test_InitialSupply() public {
        assertEq(token.totalSupply(), 1_000_000 * 10 ** 18);
    }

    function test_DeployerBalance() public {
        assertEq(token.balanceOf(address(this)), 1_000_000 * 10 ** 18);
    }

    
}
