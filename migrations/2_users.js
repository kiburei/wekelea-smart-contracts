const Users = artifacts.require("Users")
const Bets = artifacts.require("Bets")

module.exports = function(deployer) {
  deployer.deploy(Users);
  deployer.link(Users, Bets);
  deployer.deploy( Bets);
};
