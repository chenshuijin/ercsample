var MsContract = artifacts.require("MathSample");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MsContract);
};
