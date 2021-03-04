//
//  HomeViewController.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 02/03/2021.
//  
//

import UIKit

protocol HomeViewable: class {}

final class HomeViewController: UIViewController {

    private var router: HomeRoutable?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let router = HomeRouter()
        router.bind(to: self)
        bind(to: router)
    }

    func bind(to router: HomeRoutable) {
        self.router = router
    }

    @IBAction func hiraganaButtonTapped(_ sender: Any) {
        router?.routeToQuiz(.hiragana)
    }

    @IBAction func katakanaButtonTapped(_ sender: Any) {
        router?.routeToQuiz(.katakana)
    }
}

extension HomeViewController: HomeViewable {}
