pragma solidity ^0.4.23;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/mathsample.sol";

contract TestMathSample {
  function testAddUsingDeployedContract() public {
    MathSample ms = MathSample(DeployedAddresses.MathSample());
    uint expected = 3;
    Assert.equal(ms.Add(1,2), expected, "Add(1,2) should be 3");
  }

  function testSubUsingNewMathSample() public {
    MathSample ms = new MathSample();

    uint expected = 1;

    Assert.equal(ms.Sub(2,1), expected, "Sub(2,1) should be 1");
  }
}
