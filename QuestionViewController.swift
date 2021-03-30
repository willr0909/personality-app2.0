//
//  QuestionViewController.swift
//  PersonalityApp
//
//  Created by P.M. Student on 3/24/21.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionOne: UIStackView!
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    
    @IBOutlet weak var questionTwo: UIStackView!
    
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    
    
    
    @IBOutlet weak var questionThree: UIStackView!
    
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonTen: UIButton!
    @IBOutlet weak var buttonEleven: UIButton!
    @IBOutlet weak var buttonTwelve: UIButton!
    
    
    
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
    
    var answersChosen: [Answer] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }
    func updateUI() {
        questionTwo.isHidden = true
        questionOne.isHidden = true
        questionThree.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionLabel.text = currentQuestion.text
        questionProgress.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .question1:
            
            updateOne(using: currentAnswers)
        case .question2:
            
            updateTwo(using: currentAnswers)
        case .question3:
            
            updateThree(using: currentAnswers)
        }
    }
    
    
    func updateOne(using answers: [Answer]) {
        questionOne.isHidden = false
        buttonOne.setTitle(answers[0].text, for: .normal)
        buttonTwo.setTitle(answers[1].text, for: .normal)
        buttonThree.setTitle(answers[2].text, for: .normal)
        buttonFour.setTitle(answers[3].text, for: .normal)
    }
    func updateTwo(using answers: [Answer]) {
        questionTwo.isHidden = false
        buttonFive.setTitle(answers[0].text, for: .normal)
        buttonSix.setTitle(answers[1].text, for: .normal)
        buttonSeven.setTitle(answers[2].text, for: .normal)
        buttonEight.setTitle(answers[3].text, for: .normal)
    }
    func updateThree(using answers: [Answer]) {
        questionThree.isHidden = false
        buttonNine.setTitle(answers[0].text, for: .normal)
        buttonTen.setTitle(answers[1].text, for: .normal)
        buttonEleven.setTitle(answers[2].text, for: .normal)
        buttonTwelve.setTitle(answers[3].text, for: .normal)
    }
    @IBAction func QuestionOnePressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case buttonOne:
            answersChosen.append(currentAnswers[0])
        case buttonTwo:
            answersChosen.append(currentAnswers[1])
        case buttonThree:
            answersChosen.append(currentAnswers[2])
        case buttonFour:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        nextQuestion()
        
    }
    

    @IBAction func QuestionTwoPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case buttonFive:
            answersChosen.append(currentAnswers[0])
        case buttonSix:
            answersChosen.append(currentAnswers[1])
        case buttonSeven:
            answersChosen.append(currentAnswers[2])
        case buttonEight:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        nextQuestion()
    }
    
    @IBAction func QuestionThreePressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case buttonNine:
            answersChosen.append(currentAnswers[0])
        case buttonTen:
            answersChosen.append(currentAnswers[1])
        case buttonEleven:
            answersChosen.append(currentAnswers[2])
        case buttonTwelve:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        nextQuestion()
    }
    
    func nextQuestion() {
        
    }
    
}
