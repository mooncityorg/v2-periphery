pragma solidity 0.5.15;

interface IUniswapV2Router {
    function factory() external returns (address);
    function WETH() external returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountAIn,
        uint amountBIn,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    )
        external returns (uint amountA, uint amountB, uint liquidity);
    function addLiquidityETH(
        address token, uint amountTokenIn, uint amountTokenMin, uint amountETHMin, address to, uint deadline
    )
        external payable returns (uint amountToken, uint amountETH, uint liquidity);

    function removeLiquidity(
        address tokenA, address tokenB, uint liquidity, uint amountAMin, uint amountBMin, address to, uint deadline
    )
        external returns (uint amountA, uint amountB);
    function removeLiquidityETH(
        address token, uint liquidity, uint amountTokenMin, uint amountETHMin, address to, uint deadline
    )
        external returns (uint amountToken, uint amountETH);

    function swapExactTokensForTokens(
        uint amountIn, address[] calldata tokens, uint amountOutMin, address to, uint deadline
    )
        external returns (uint amountOut);
    function swapTokensForExactTokens(
        uint amountInMax, address[] calldata tokens, uint amountOut, address to, uint deadline
    )
        external returns (uint amountIn);
}
