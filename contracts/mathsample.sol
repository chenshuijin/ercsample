pragma solidity ^0.4.23;

contract DSMath {
  function add(uint x, uint y) internal pure returns (uint z) {
    require((z = x + y) >= x);
  }

  function sub(uint x, uint y) internal pure returns (uint z) {
    require((z = x - y) <= x);
  }

  function mul(uint x, uint y) internal pure returns (uint z) {
    require(y == 0 || (z = x * y) / y == x);
  }
}

contract MathSample is DSMath {
  function Add(uint x, uint y) public pure returns (uint) {
    uint z = add(x,y);
    return z;
  }
  function Sub(uint x, uint y) public pure returns (uint) {
    uint z = sub(x,y);
    return z;
  }
  function Mul(uint x, uint y) public pure returns (uint) {
    uint z = mul(x,y);
    return z;
  }
}
