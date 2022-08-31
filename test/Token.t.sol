// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "src/IToken.sol";

contract TokenTest is Test {
    IToken public TOKEN;

    function setUp() public {
        
    }

    function testName() public {
        TOKEN = IToken(
            HuffDeployer
            .config()
            .with_args(hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000b68656c6c6f20776f726c64000000000000000000000000000000000000000000") // "hello world"
            .deploy("Token")
        );
        console.log("Token Address",address(TOKEN));
        console.logBytes(address(TOKEN).code);
        string memory name = TOKEN.name();
        // console.logBytes(abi.encode(name));
        // console.logString(name);
    }
    
}

