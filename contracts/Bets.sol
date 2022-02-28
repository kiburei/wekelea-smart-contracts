// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Bets {

  struct Bet {
    uint bet_id;
    string bet_name;
    address player1;
    /* uint player1_deposit;
    string player1_prediction; */
    address player2;
    /* uint player1_deposit;
    string player2_prediction; */
    bool bet_status;
    string result;
  }

  Bet[] public placed_bets;
  uint bet_id_count;

  function placeBet(string memory _bet_name, address _player1, address _player2) public {
    /* increment bet id */
    bet_id_count++;
    placed_bets.push(Bet({ bet_id: bet_id_count, bet_name: _bet_name, player1: _player1, player2: _player2, bet_status: false, result: "Nil"  }));
  }

  function getPlacedBet(uint _bet_id) public view returns(Bet memory) {
    return placed_bets[_bet_id];
  }

}
