//
//  QuestionViewController.swift
//  PersonalityApp
//
//  Created by P.M. Student on 3/24/21.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionOne: UIStackView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var questionTwo: UIStackView!
    
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    
    
    @IBOutlet weak var questionThree: UIStackView!
    
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var questionProgress: UIProgressView!
    
    
    var questions: [Question] = [ Question(text: "Which do you prefer to eat?",
                                           type: .question1,
                                           answers: [Answer (text: "Chicken", type: .snail),
                                                     Answer (text: "Burger", type: .cuttlefish),
                                                     Answer (text: "Apples", type: .octopus),
                                                     Answer (text: "Ramen", type: .kompi)
                                           ]),
                                  Question(text: "What would you rather be?",
                                           type: .question2,
                                            answers: [Answer (text: "A dictator", type: .snail),
                                                     Answer (text: "A benevolent king", type: .cuttlefish),
                                                     Answer (text: "A snail", type: .octopus),
                                                     Answer (text: "Elkay EZH2O Enhanced Wall Mounted Filtered Water Bottle Refilling Station, Light Gray", type: .kompi)
                                           ]),
                                  
                                  Question(text: "Where would you live?",
                                           type: .question3,
                                           answers: [Answer (text: "The abyss(Florida)", type: .snail),
                                                     Answer (text: "England", type: .cuttlefish),
                                                     Answer (text: "Cambodia", type: .octopus),
                                                     Answer (text: "In space", type: .kompi)
                                           ]),
    ]
    
    var questionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }
    func updateUI() {
        questionOne.isHidden = true
        questionTwo.isHidden = true
        questionThree.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionLabel.text = currentQuestion.text
        questionProgress.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .question1:
            
            updateQuesionOneStackView(using: currentAnswers)
        case .question2:
            
            updateQuesionTwoStackView(using: currentAnswers)
        case .question3:
            
            updateQuesionThreeStackView(using: currentAnswers)
        }
    }
    
    func updateQuesionOneStackView(using answers: [Answer]) {
        questionOne.isHidden = false
        button1.setTitle(answers[0].text, for: .normal)
        button2.setTitle(answers[1].text, for: .normal)
        button3.setTitle(answers[2].text, for: .normal)
        button4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateQuesionTwoStackView(using answers: [Answer]) {
        questionTwo.isHidden = false
        button5.setTitle(answers[0].text, for: .normal)
        button6.setTitle(answers[1].text, for: .normal)
        button7.setTitle(answers[2].text, for: .normal)
        button8.setTitle(answers[3].text, for: .normal)
    }
    
    func updateQuesionThreeStackView(using answers: [Answer]) {
        questionThree.isHidden = false
        button9.setTitle(answers[0].text, for: .normal)
        button10.setTitle(answers[1].text, for: .normal)
        button11.setTitle(answers[2].text, for: .normal)
        button12.setTitle(answers[3].text, for: .normal)
    }
}
