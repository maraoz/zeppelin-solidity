pragma solidity ^0.4.8;

import "./Zeppelin.sol";

contract UserContract {
  using Zeppelin for Zeppelin.SimpleToken;
  
  Zeppelin.SimpleToken token;


  function foo() constant returns (uint) {
    return token.getPrice() * 100;
  }

}
