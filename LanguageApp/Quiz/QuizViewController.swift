//
//  QuizViewController.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import UIKit

protocol QuizViewable: class {}

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
    }

    func updateView(_ viewModel: QuizViewModel) {
        progressLabel.text = ""
        targetLabel.text = ""
        topLeftButton.titleLabel?.text = ""
        topRightButton.titleLabel?.text = ""
        bottomLeftButton.titleLabel?.text = ""
        bottomRightButton.titleLabel?.text = ""
    }

    func bind(to interactor: QuizInteractable?, and router: QuizRoutable) {
        self.interactor = interactor
        self.router = router
    }
}

extension QuizViewController: QuizViewable {}
