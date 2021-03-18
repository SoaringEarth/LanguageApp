//
//  QuizLeaderboardFactory.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 09/03/2021.
//  
//

import Foundation

enum QuizLeaderboardFactory {

    static func makeScene(withScore score: Int, questionCount: Int) -> QuizLeaderboardViewController {
        let vc = QuizLeaderboardViewController(nibName: String(describing: QuizLeaderboardViewController.self), bundle: .main)
        let presenter = QuizLeaderboardPresenter(view: vc)
        let worker = QuizLeaderboardWorker()
        let interactor = QuizLeaderboardInteractor(presenter: presenter, worker: worker, quizType: "hiragana", score: score, questionCount: questionCount)
        let router = QuizLeaderboardRouter()
        router.bind(to: vc)
        vc.bind(to: interactor, and: router)
        return vc
    }
}
