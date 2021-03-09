//
//  QuizRouter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
// 
//

import UIKit

protocol QuizRoutable {
    func presentQuizLeaderboard()
}

final class QuizRouter {

    private weak var vc: UIViewController?

    func bind(to vc: UIViewController?) {
        self.vc = vc
    }
}

extension QuizRouter: QuizRoutable {

    func presentQuizLeaderboard() {
        // TODO : Implement quiz leaderboard
    }
}
