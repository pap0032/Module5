//
//  AdventureLogic.swift
//  HelloWorld
//
//  Created by Patrick Parks on 11/17/24.
//

import Foundation

struct AdventureLogic {
    var startChoice: Choice?
    
    mutating func startAdventure() {
        // Initialize the adventure choices here
        let foundMap =
        """
        You found the map of The
        Treasure on Pirate Island
        """
        let finalChoice1 = Choice(title: "Swim through the Swamp", description: "You were eaten by a Crocodile", success: false)
        let finalChoice2 = Choice(title: "Hike up the mountain", description: "Congratulations! You found the treasure!", success: true)
        let secondChoice1 = Choice(title: "Hire a private boat captain", description: "What next?", success: false, nextChoices: [finalChoice1, finalChoice2])
        let secondChoice2 = Choice(title: "Hire a private flight pilot", description: "What next?", success: false, nextChoices: [finalChoice1, finalChoice2])
        //Starting Point
        startChoice = Choice(title: "Which do you choose?", description: foundMap, success: false, nextChoices: [secondChoice1, secondChoice2])
    }
}
    
