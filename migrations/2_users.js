const Users = artifacts.require("Users")
const Bets = artifacts.require("Bets")

module.exports = function(deployer) {
  deployer.deploy(Users);
  deployer.deploy( Bets);
};
