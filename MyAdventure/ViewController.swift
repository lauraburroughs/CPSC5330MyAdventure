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
            Choice(text: "Go left", destinationIndex: 0),
            Choice(text: "Go right", destinationIndex: 1),
        ]


        // First storyNode
        let startNode = StoryNode(
            text: "Oh no! You took a wrong turn on your nature hike and find yourself lost in a haunted forest! Which path will you take?",
            choices: firstChoices,
            isEnding: false,
            isSuccess: false
        )
        
        
        // Add the first node
        storyNodes.append(startNode)

    }
}

