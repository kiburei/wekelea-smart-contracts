// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Users {

  enum Gender { Male, Female, Other}

    struct AppUser {
        uint id;
        string username;
        Gender gender; // pass gender as unum
        address wallet;
    }

    uint id_counter; // to increment user id

    AppUser[] public app_users;

    function setUpUser(string memory _username, uint _gender, address _wallet) public {
      /* validate enum values are within range */
        require(uint(Gender.Other) >= _gender);
        app_users.push(AppUser(id_counter, _username, Gender(_gender), _wallet));
        id_counter += 1;
    }

    function getAppUser(uint _id) public view returns(AppUser memory) {
      return app_users[_id];
    }

    function getAppUserBalance(uint _id) public view returns(uint) {
      AppUser memory user = getAppUser(_id);
      /* get wallet balance */
      uint balance = user.wallet.balance;
      return balance;
    }


}
