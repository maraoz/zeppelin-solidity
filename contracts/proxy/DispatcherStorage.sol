pragma solidity ^0.4.8;

contract DispatcherStorage {
  address public lib;
  mapping(bytes4 => uint32) public sizes;

  function DispatcherStorage(address newLib) {
    sizes[bytes4(sha3("getUint(LibInterface.S storage)"))] = 32;
  }

  function setCurrentVersion(address currentLib) /* onlyDAO */ {
    lib = currentLib;
  }
}
