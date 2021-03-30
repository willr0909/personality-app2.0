//
//  QuestionData.swift
//  PersonalityApp
//
//  Created by P.M. Student on 3/25/21.
//

import Foundation


struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case question1, question2, question3
    
}

struct Answer {
    var text: String
    var type: CharacterType
}

enum CharacterType: String {
    case snail = "Snail", octopus = "Octopus", kompi = "Kompi", cuttlefish = "Cuttlefish"
    
    var definition: String {
        
        switch self {
        case .snail:
           return "You are an evil person. You hate everything and anything that dislikes pickles. You would destroy the entire universe over a broken pencil."
            
        case .octopus:
           return "You are a kind person, willing to help even the most wicked people (including snails)."
            
        case .cuttlefish:
           return "This isn’t a description; it is a message. Please help me. I don’t have much time. "
            
        case .kompi:
           return "Mmmm you like to drink Bang and Monster Energy mmm tasty. "
        }
    }
}
