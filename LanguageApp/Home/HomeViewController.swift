//
//  HomeViewController.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 02/03/2021.
//  
//

import UIKit

protocol HomeViewable: class {
    // Replaced by presenter's presentation output functions
}

final class HomeViewController: UIViewController {

    private var router: HomeRoutable?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func bind(to router: HomeRoutable) {
        self.router = router
    }

    func hiraganaButtonTapped() {


    }

    func katakanaButtonTapped() {


    }
}

extension HomeViewController: HomeViewable {}
