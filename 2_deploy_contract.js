// const ConvertLib = artifacts.require("ConvertLib");
const CleanEnergyVersion1 = artifacts.require("CleanEnergyVersion1");

module.exports = function(deployer) {
 // deployer.deploy(ConvertLib);
 // deployer.link(ConvertLib, CleanEnergyVersion1);
  deployer.deploy(CleanEnergyVersion1);
};
