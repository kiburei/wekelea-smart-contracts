// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Users {

  enum Gender { Male, Female, Other}

    struct AppUser {
        string first_name;
        string last_name;
        string username;
        Gender gender;
    }

    AppUser public app_user;

    function setUpUser(string memory _first_name, string memory _last_name, string memory _username, uint8 _gender) public {
        app_user = AppUser(_first_name, _last_name, _username, Gender(_gender));
    }

    function getAppUser() public view returns(AppUser memory) {
      return app_user;
    }

}
