// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract HelloWorld {
    string public name;
    string public greetingPrefixer = "Hello ";
    constructor(string memory preName) {
        name = preName;
    }
    function setUserName(string memory newName) public {
        name = newName;
    }
    function greetUser() public view returns (string memory){
        return string(abi.encodePacked(greetingPrefixer, name));
    }
    function getUserName() public view returns (string memory){
        return name;
    }

}