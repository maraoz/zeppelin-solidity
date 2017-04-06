pragma solidity ^0.4.8;


import './ERC20Basic.sol';
import '../SafeMath.sol';


/*
 * Basic token
 * Basic version of StandardToken, with no allowances
 */
contract BasicToken is ERC20Basic {
  using SafeMath for uint;

  mapping(address => uint) balances;

  function transfer(address _to, uint _value) {
    balances[msg.sender] = balances[msg.sender].safeSub(_value);
    balances[_to] = balances[_to].safeAdd(_value);
    Transfer(msg.sender, _to, _value);
  }

  function balanceOf(address _owner) constant returns (uint balance) {
    return balances[_owner];
  }
  
}
