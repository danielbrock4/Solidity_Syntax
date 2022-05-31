// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Market.sol";


contract Example {
	Market public market;

    //  The address is being passed into the constructor and we're converting it to a Market type to gain access to its functions.
	constructor(address _marketAddress) {
        // With the market variable we can call all the functions that are publicly/externally available on this contract.
		market = Market(_marketAddress);
	}

	function getPrice(uint tokenId) external view returns(uint) {
		return market.getPrice(tokenId);
	}
}


function getScoreDifference(Game.Teams teamNumber) public view returns(int) {
		if(teamNumber == Game.Teams.Team1) {
			return game.team1Score() - game.team2Score();
		}
		return game.team2Score() - game.team1Score();
	}