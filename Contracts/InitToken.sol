pragma solidity ^0.4.18;

import './StandardToken.sol';
import './Ownable.sol';

contract InitToken is StandardToken, Ownable {
    
    string public name;
    string public symbol;
    uint8 public decimals = 18;
    uint256 initialSupply = 8000000000;  //8B coins.  The amount i think we'll need in order to change the blockchain industry. 
    
  
    function InitToken() public {
     name = "THRIFA";
     symbol = "TFA";
     totalSupply = initialSupply * 10 ** uint256(decimals);
     balances[msg.sender] = totalSupply;
  }
}