pragma solidity >=0.4.25 <0.7.0;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/CleanEnergyVersion1.sol";
contract TestCleanEnergyVersion1 {

  function testcleanenergyAvailable() public {
      // DeployedAddresses.HashMarket() handles contract address
      // management for us
      CleanEnergyVersion1 P2PES = CleanEnergyVersion1(DeployedAddresses.CleanEnergyVersion1());

      //expected energy units by the prosumer
      uint256 expectedEnergyId = 1;
      uint expectedEnergyUnits = 50;
      //uint256 energyUnit;

     // (energyUnit) = P2PES.cleanenergyAvailable(memory expectedEnergyId, memory expectedEnergyUnits);

      
      uint eunit;
      //address payable prosumer;
     

      (eunit) = P2PES.getAvailableEnergyUnits(expectedEnergyId);

     
      Assert.equal(eunit, expectedEnergyUnits, "prosumer should have min 50 units");
      //Assert.equal(prosumer, this, "The function caller should be the prosumer");
  }
  function testgetConsumerBalance() public {
      // DeployedAddresses.HashMarket() handles contract address
      // management for us
      CleanEnergyVersion1 P2PES = CleanEnergyVersion1(DeployedAddresses.CleanEnergyVersion1());
      address consumerAccount;
      consumerAccount = address(0x123);
      //expected account balance of the consumer
      uint expectedbalance = 12;
      uint accountbalance;
            
      //uint eunit;
      //address payable prosumer;
     

      (accountbalance) = P2PES.getConsumerBalance(address(consumerAccount));

     
      Assert.equal(accountbalance, expectedbalance, "Consumer should have balance in his account to buy energy");
      //Assert.equal(prosumer, this, "The function caller should be the prosumer");
  }

}