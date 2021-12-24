//
//  StoryBrain.swift
//  Cafe
//
//  Created by Григорий Душин on 24.12.2021.
//
//
import Foundation

struct StoryBrain {
        
        var storyNumber = 0
        
        let stories = [
            Story(
                title: "Ok, you are  in cafe now. It`s time to choose your coffee ☕️. Do you need more energy?",
                choice1: "Definitly!🥱", choice1Destination: 5,
                choice2: "Not shure🧐", choice2Destination: 1, picture: "cafe", hiddennes: false //0
            ),
            Story(
                title: "Well, do you like milk?",
                choice1: "Yep.", choice1Destination: 3,
                choice2: "No way!", choice2Destination: 2, picture: "cafe", hiddennes: false
            ),
            Story(
                title: "Ok.... Maybe alternative milk?",
                choice1: "I said no milk!", choice1Destination: 4,
                choice2: "It would be nice!", choice2Destination: 3, picture: "cafe", hiddennes: false
            ),
            Story(
                title: "More milk or foam?",
                choice1: "Milk", choice1Destination: 8,
                choice2: "Foam", choice2Destination: 7, picture: "cafe", hiddennes: false
            ),
            Story(
                title: "Seriously? Ok, you should order Americano ",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0, picture: "americano", hiddennes: true
            ),
            Story(
                title: "Are you extremely tired?!",
                choice1: "YEEES", choice1Destination: 6,
                choice2: "Not for sure", choice2Destination: 7, picture: "cafe", hiddennes: false
            ),
            Story(
                title: "So, you can order espresso!",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0, picture: "espresso", hiddennes: true
            ),
            Story(
                title: "So, you can order double espresso!",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0, picture: "double", hiddennes: true
            ),
            Story(
                title: "So, you can order cappuchino!",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0, picture: "cappucino", hiddennes: true
            ),
            Story(
                title: "So, you can order latte!",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0, picture: "latte", hiddennes: true
                
            )
        ]
        
        func getStoryTitle() -> String {
            return stories[storyNumber].title
        }
        
        func getChoice1() -> String {
            return stories[storyNumber].choice1
        }
        
        func getChoice2() -> String {
            return stories[storyNumber].choice2
        }
        
        mutating func nextStory(userChoice: String) {
            
            let currentStory = stories[storyNumber]
            if userChoice == currentStory.choice1 {
                storyNumber = currentStory.choice1Destination
            } else if userChoice == currentStory.choice2 {
                storyNumber = currentStory.choice2Destination
            }
        }
    func getPic() -> String {
        return stories[storyNumber].picture
    }
    
    func getHidden() -> Bool {
        return stories[storyNumber].hiddennes
    }
    
    
    }
