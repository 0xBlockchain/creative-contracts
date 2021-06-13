// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CRTVOtoken is ERC20 {
    
    constructor() ERC20("Creative Organization Token", "CRTVO") { 
        _mint(msg.sender, 200 * 10^7 );
    }

    function burn(uint _amount) external returns(bool){
        _burn(msg.sender, _amount);
        return true;
    }
}