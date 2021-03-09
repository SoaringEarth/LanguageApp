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
    func routeToQuizLeaderboard()
}

final class QuizViewController: UIViewController {

    private var interactor: QuizInteractable?
    private var router: QuizRoutable?

    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.start()
    }


    func bind(to interactor: QuizInteractable?, and router: QuizRoutable) {
        self.interactor = interactor
        self.router = router
    }

    @IBAction func buttonTapped() {
        interactor?.answerSelected()
    }
}

extension QuizViewController: QuizViewable {

    func updateView(_ viewModel: QuizViewModel) {
        progressLabel.text = viewModel.progress
        targetLabel.text = viewModel.target
        setupQuizButtons(viewModel)
    }

    func setupQuizButtons(_ viewModel: QuizViewModel) {
        var buttonArray: [UIButton] = [topLeftButton, topRightButton, bottomLeftButton, bottomRightButton]
        let randomNumber = Int(arc4random()) % 4
        buttonArray[randomNumber].setTitle(viewModel.correctAnswer, for: .normal)
        buttonArray.remove(at: randomNumber)
        for (index, button) in buttonArray.enumerated() {
            button.setTitle(viewModel.incorrectAnswers[index], for: .normal)
        }
    }

    func routeToQuizLeaderboard() {
        router?.presentQuizLeaderboard()
    }
}
