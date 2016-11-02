pragma solidity ^0.4.0;

import "./Ownable.sol";
/*
 * Stoppable
 * Abstract contract that allows children to implement an
 * emergency stop mechanism.
 */
contract Stoppable is Ownable {
  bool public stopped;

  modifier stopInEmergency { if (!stopped) _; }
  modifier onlyInEmergency { if (stopped) _; }

  function emergencyStop() external {
    if (msg.sender != owner) throw;
    stopped = true;
  }

  function release() external onlyInEmergency {
    if (msg.sender != owner) throw;
    stopped = false;
  }

}
