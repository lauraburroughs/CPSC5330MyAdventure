//
//  ViewController.swift
//  MyAdventure
//  CPSC 5330 Assignment 5
//  Created by Laura Burroughs on 2/1/26.
//

import UIKit

// Model
struct Choice {
    let text: String
    let destinationIndex: Int
}

struct StoryNode {
    let text: String
    let choices: [Choice]
    let isEnding: Bool
    let isSuccess: Bool
}



// Controller
class ViewController: UIViewController {
    
    // Array of all story nodes
    var storyNodes: [StoryNode] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Array of choices
        let firstChoices = [
            Choice(text: "Go left", destinationIndex: 1),
            Choice(text: "Go right", destinationIndex: 2),
        ]


        // First storyNode
        let startNode = StoryNode(
            text: "Oh no! You took a wrong turn on your nature hike and find yourself lost in a haunted forest! Which path will you take?",
            choices: firstChoices,
            isEnding: false,
            isSuccess: false
        )
        
        
        
        // Left Path Node
        let ghostChoices = [
            Choice(text: "Run past the ghost!", destinationIndex: 3),
            Choice(text: "Yell 'Boo!' at the ghost", destinationIndex: 4)
        ]
        
        let ghostNode = StoryNode(
            text: "You find a ghost making spooky noises. What do you do?",
            choices: ghostChoices,
            isEnding: false,
            isSuccess: false
        )
        
        
        
        // Right Path Node
        let witchChoices = [
            Choice(text: "Duck and cower behind a tree", destinationIndex: 5),
            Choice(text: "Declare yourself Head Witch and command her to guard you", destinationIndex: 6)
        ]
        
        let witchNode = StoryNode(
            text: "You come across a witch in the distance. What do you do?",
            choices: witchChoices,
            isEnding: false,
            isSuccess: false
        )
        
        
        
        // Ending nodes
        let werewolfNode = StoryNode(
            text: "You run past the ghost...and smack into a werewolf! Game Over!",
            choices: [],
            isEnding: true,
            isSuccess: false
        )
        
        let ghostScaredNode = StoryNode(
            text: "The ghost is frightened by your bravery and lets you pass. You saved yourself!",
            choices: [],
            isEnding: true,
            isSuccess: true
        )
        
        let witchTrapNode = StoryNode(
            text: "Tree branches encircle you, trapping you forever! Game Over!",
            choices: [],
            isEnding: true,
            isSuccess: false
        )
        
        let witchAllyNode = StoryNode(
            text: "She apologizes and guides you through the forest as your bodyguard. You saved yourself!",
            choices: [],
            isEnding: true,
            isSuccess: true
        )
        
        
        // Add all nodes
        storyNodes.append(startNode)        // index 0
        storyNodes.append(ghostNode)        // index 1
        storyNodes.append(witchNode)        // index 2
        storyNodes.append(werewolfNode)     // index 3
        storyNodes.append(ghostScaredNode)  // index 4
        storyNodes.append(witchTrapNode)    // index 5
        storyNodes.append(witchAllyNode)    // index 6
        
    }
}

