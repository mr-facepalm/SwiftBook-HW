//
//  QuestionViewController.swift
//  AnimalQuiz
//
//  Created by Vladislav Maslov on 24.03.2023.
//

import UIKit

class QuestionViewController: UIViewController {
    
        @IBOutlet var questionLable: UILabel!
        @IBOutlet var progressLable: UIProgressView!
        @IBOutlet var rangedSlider: UISlider! {
            didSet {
                let answerCount = Float(currentAnswers.count - 1)
                rangedSlider.value = answerCount
            }
        }
    
        @IBOutlet var singleStackQuestion: UIStackView!
        @IBOutlet var multipleStackQuestion: UIStackView!
        @IBOutlet var rangeStackQuestion: UIStackView!
    
        @IBOutlet var singleButtons: [UIButton]!
        @IBOutlet var multipleLables: [UILabel]!
        @IBOutlet var rangeLables: [UILabel]!
        @IBOutlet var multipleSwitches: [UISwitch]!
    
        private let questions = Question.getQuestions()
        private var questionIndex = 0
        private var answerChousen : [Answer] = []
        private var currentAnswers: [Answer] {
            questions[questionIndex].answer
        }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            updateUI()
        }
    
    @IBAction func singleButtonOutletPressed(_ sender: UIButton) {
        guard let currentIndex = singleButtons.firstIndex(of: sender) else { return }
        let currentAnswer = currentAnswers[currentIndex]
        answerChousen.append(currentAnswer)
        nextQuestion()
    }
    
    @IBAction func multipleButtonOutletPressed() {
        for (multipleSwitch, answer) in zip(multipleSwitches, currentAnswers) {
            if multipleSwitch.isOn {
                answerChousen.append(answer)
            }
        }
        nextQuestion()
    }
    
    @IBAction func rangedButtonOutletPressed() {
        let index = Int(rangedSlider.value)
        answerChousen.append(currentAnswers[index])
        nextQuestion()
    }
     
    }
    
    extension QuestionViewController {
        private func updateUI(){
            for stackView in [singleStackQuestion, multipleStackQuestion, rangeStackQuestion] {
                stackView?.isHidden = true
            }
    
            let currentQuestion = questions[questionIndex]
            questionLable.text = currentQuestion.text
            let totalProgress = Float(questionIndex) / Float(questions.count)
            progressLable.setProgress(totalProgress, animated: true)
            title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
    
            showCurrentStackView(for: currentQuestion.type)
        }
    
        private func showCurrentStackView (for type: ResponseType){
            switch type{
            case .range:
                showRengedStackView(with: currentAnswers)
            case .multiple:
                showMultipleStackView(with: currentAnswers)
            case .single:
                showSingleStackView(with: currentAnswers)
            }
        }
        private func showSingleStackView (with answers: [Answer]){
            singleStackQuestion.isHidden = false
            for (button, answer) in zip(singleButtons, answers) {
                button.setTitle(answer.text, for: .normal)
            }
        }
        private func showMultipleStackView (with answers: [Answer]){
            multipleStackQuestion.isHidden = false
            for (lable, answer) in zip(multipleLables, answers) {
                 lable.text = answer.text
            }
        }
        private func showRengedStackView (with answers: [Answer]){
            rangeStackQuestion.isHidden = false
            rangeLables.first?.text = answers.first?.text
            rangeLables.last?.text = answers.last?.text
        }
        private func nextQuestion(){
            questionIndex += 1
            if questionIndex < questions.count {
                updateUI()
                return
            }
            performSegue(withIdentifier: "showResult", sender: nil)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let finalVC = segue.destination as! FinalViewController
            finalVC.answersArray = answerChousen
        }
        
}
