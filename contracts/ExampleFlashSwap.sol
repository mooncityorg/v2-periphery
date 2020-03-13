pragma solidity =0.5.16;

import './interfaces/V2/IUniswapV2Callee.sol';
import './UniswapV2Library.sol';
import './interfaces/V2/IUniswapV2Exchange.sol';

contract ExampleFlashSwap is IUniswapV2Callee, UniswapV2Library {
    function uniswapV2Call(
        address,       /* sender */
        uint,          /* amount0 */
        uint,          /* amount1 */
        bytes calldata /* data */
    ) external {
        address token0 = IUniswapV2Exchange(msg.sender).token0();
        address token1 = IUniswapV2Exchange(msg.sender).token1();
        assert(msg.sender == exchangeFor(token0, token1));
        // execute arbitrary logic here
    }
}
