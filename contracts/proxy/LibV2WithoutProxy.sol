pragma solidity ^0.4.8;

contract LibV2WithoutProxy {
  uint i;

  function getUint() returns (uint) {
    return i * 10;
  }

  function setUint(uint _i) {
    i = _i;
  }
}
