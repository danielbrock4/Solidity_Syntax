// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;



contract Game {
    // int = interger that can positive or negative
    // public functions can be caled internally so they write to memory 
    int public team1Score; 
    int public team2Score;

    // Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.
    enum Teams { Team1, Team2 }

    function addScore (Teams teamNumber) external {
        // TODO: add score to the specified team
        if (teamNumber == Teams.Team1) {
            team1Score++;

        } else {
            team2Score++;
        }

    }
}