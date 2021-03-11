//
//  QuizViewController.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import UIKit

protocol QuizViewable: class {
    func updateView(_ viewModel: QuizViewModel)
    func routeToQuizLeaderboard(withScore score: Int, questionCount: Int)
}

final class QuizViewController: UIViewController {

    private var interactor: QuizInteractable?
    private var router: QuizRoutable?

    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var topLeftButton: QuizButton!
    @IBOutlet weak var topRightButton: QuizButton!
    @IBOutlet weak var bottomLeftButton: QuizButton!
    @IBOutlet weak var bottomRightButton: QuizButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.start()
    }


    func bind(to interactor: QuizInteractable?, and router: QuizRoutable) {
        self.interactor = interactor
        self.router = router
    }

    @IBAction func buttonTapped(_ sender: Any) {
        guard let quizButton = sender as? QuizButton else { return }
        interactor?.answerSelected(isCorrect: quizButton.isCorrectAnswer)
    }
}

extension QuizViewController: QuizViewable {

    func updateView(_ viewModel: QuizViewModel) {
        progressLabel.text = viewModel.progress
        targetLabel.text = viewModel.target
        setupQuizButtons(viewModel)
    }   

    func setupQuizButtons(_ viewModel: QuizViewModel) {
        var buttonArray: [QuizButton] = [topLeftButton, topRightButton, bottomLeftButton, bottomRightButton]
        let randomNumber = Int(arc4random()) % 4
        buttonArray[randomNumber].setTitle(viewModel.correctAnswer, for: .normal)
        buttonArray[randomNumber].isCorrectAnswer = true
        buttonArray.remove(at: randomNumber)
        for (index, button) in buttonArray.enumerated() {
            button.setTitle(viewModel.incorrectAnswers[index], for: .normal)
            button.isCorrectAnswer = false
        }
    }

    func routeToQuizLeaderboard(withScore score: Int, questionCount: Int) {
        router?.presentQuizLeaderboard(withScore: score, questionCount: questionCount)
    }
}
