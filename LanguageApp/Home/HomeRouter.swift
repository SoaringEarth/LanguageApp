//
//  HomeRouter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 02/03/2021.
// 
//

import UIKit

enum QuizType: String {
    case hiragana
    case katakana
}

protocol HomeRoutable {
    func routeToQuiz(_ type: QuizType)
}

final class HomeRouter {

    private weak var vc: UIViewController?

    func bind(to vc: UIViewController?) {
        self.vc = vc
    }
}

extension HomeRouter: HomeRoutable {

    func routeToQuiz(_ type: QuizType) {
        switch type {
        case .hiragana:
            let quizViewController = QuizFactory.makeScene(dataSetFetcher: HiraganaDataSet())
            vc?.present(quizViewController, animated: true)
        case .katakana:
            let quizViewController = QuizFactory.makeScene(dataSetFetcher: KatakanaDataSet())
            vc?.present(quizViewController, animated: true)
        }
    }
}
