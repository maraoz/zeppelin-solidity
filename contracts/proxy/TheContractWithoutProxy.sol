pragma solidity ^0.4.8;

import "./LibV2WithoutProxy.sol";

contract TheContractWithoutProxy is LibV2WithoutProxy {
  function get() constant returns (uint) {
    return getUint();
  }

  function set(uint i) {
    setUint(i);
  }
}
