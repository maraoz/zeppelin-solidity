pragma solidity ^0.4.8;

library Zeppelin {
  struct SimpleToken { uint i; }

  function getPrice(SimpleToken storage self) returns (uint);
}
