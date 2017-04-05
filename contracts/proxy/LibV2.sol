pragma solidity ^0.4.8;

import "../contracts/LibInterface.sol";

library LibV2 {
  function getUint(LibInterface.S storage s) returns (uint) {
    return s.i * 10;
  }

  function setUint(LibInterface.S storage s, uint i) {
    s.i = i;
  }
}
