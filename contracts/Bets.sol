// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./Users.sol";

contract Bets {

  constructor() public {
    Users usersInstance = new Users();
  }

  struct Bet {
    uint bet_id;
    string bet_name;
    address player1;
    address player2;
    bool bet_status;
    string result;
  }

  Bet[] public placed_bets;
  uint bet_id_count;

  /* event Transfer(address _from, address  _to, uint256 _value);

  function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
    if (balances[msg.sender] < amount) return false;
    balances[msg.sender] -= amount;
    balances[receiver] += amount;
    emit Transfer(msg.sender, receiver, amount);
    return true;
  } */

  function placeBet(string memory _bet_name, address _player1, address _player2) public {
    /* increment bet id */
    bet_id_count++;
    placed_bets.push(Bet({ bet_id: bet_id_count, bet_name: _bet_name, player1: _player1, player2: _player2, bet_status: false, result: "Nil"  }));
  }

  function getPlacedBet(uint _bet_id) public view returns(Bet memory) {
    return placed_bets[_bet_id];
  }

  function placeEqualWager(uint _wager, uint _bet_id) public view returns(string memory) {
    /* check if participants have allowed balance plus commission */
    Bet memory bet = getPlacedBet(_bet_id);
    uint player_wager = _wager % 2;


    string memory success = "Bet placed successfully, each player wager is ";
    return success;
  }

  function getWalletBalance(address _addr) public view returns(uint) {
     uint balance = address(this).balance;
  }


}
