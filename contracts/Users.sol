// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Users {

  enum Gender{HE, SHE, OTHER}
  Gender gender;

  function setGender(uint g) public {
    gender = Gender.HE;
  }

  constructor() public {
  }

}
