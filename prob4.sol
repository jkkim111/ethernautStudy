pragma solidity ^0.8.11;

contract hackTelephone {

  address public owner;
  address payable problemAddress;

  constructor(address payable inputAddress) public {
    problemAddress = inputAddress;
  }

  function sendProxy(uint amount) public payable{
    problemAddress.transfer(amount);
  }
}
