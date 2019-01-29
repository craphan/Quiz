//
//  ViewController.swift
//  Quiz
//
//  Created by Carly Raphan on 1/23/19.
//             High Point University 
//  Copyright © 2019 Carly Raphan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    let questions: [String] = [
        "What is 7+7?",
        "What is the captial of Vermont?",
        "What is cognac made from?",
        "Where is the Sahara Desert?",
        "Who is on the five dollar bill?",
        "How many states are in the U.S.?",
        "Who is our current President?",
        "What is HPU's mascot?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "Africa",
        "Abraham Lincoln",
        "50",
        "President Donald Trump",
        "Panther"
    ]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

