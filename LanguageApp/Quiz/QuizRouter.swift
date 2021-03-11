//
//  QuizRouter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
// 
//

import UIKit

protocol QuizRoutable {
    func presentQuizLeaderboard(withScore score: Int, questionCount: Int)
}

final class QuizRouter {

    private weak var vc: UIViewController?

    func bind(to vc: UIViewController?) {
        self.vc = vc
    }
}

extension QuizRouter: QuizRoutable {

    func presentQuizLeaderboard(withScore score: Int, questionCount: Int) {
        let quizLeaderboard = QuizLeaderboardFactory.makeScene(withScore: score, questionCount: questionCount)
        vc?.present(quizLeaderboard, animated: true)
    }
}
