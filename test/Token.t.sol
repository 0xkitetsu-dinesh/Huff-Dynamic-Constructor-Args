// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "src/IToken.sol";

contract TokenTest is Test {
    // IToken public TOKEN;

    function setUp() public {}

    function test1() public {
        // utils.defaultAbiCoder.encode(['string','string'], ['The quick brown fox jumps over the lazy dog','EVM'])
        console.log("Input  :: Args => 'The quick brown fox jumps over the lazy dog','EVM' ");
        IToken TOKEN = IToken(
            HuffDeployer
            .config()
            .with_args(hex"000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000a0000000000000000000000000000000000000000000000000000000000000002b54686520717569636b2062726f776e20666f78206a756d7073206f76657220746865206c617a7920646f67000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000345564d0000000000000000000000000000000000000000000000000000000000") // "hello world"
            .deploy("Token")
        );
        // console.log("Token Address",address(TOKEN));
        // console.logBytes(address(TOKEN).code);
        console.log("Output :: Args1 => ",TOKEN.name());
        console.log("Output :: Args2 => ",TOKEN.symbol());
    }

    function test2() public {
        // utils.defaultAbiCoder.encode(['string','string'], ['EVM','The quick brown fox jumps over the lazy dog'])
        console.log("Input  :: Args => 'EVM','The quick brown fox jumps over the lazy dog' ");
        IToken TOKEN = IToken(
            HuffDeployer
            .config()
            .with_args(hex"00000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000345564d0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002b54686520717569636b2062726f776e20666f78206a756d7073206f76657220746865206c617a7920646f67000000000000000000000000000000000000000000") // "hello world"
            .deploy("Token")
        );
        // console.log("Token Address",address(TOKEN));
        // console.logBytes(address(TOKEN).code);
        console.log("Output :: Args1 => ",TOKEN.name());
        console.log("Output :: Args2 => ",TOKEN.symbol());
    }
    
}

