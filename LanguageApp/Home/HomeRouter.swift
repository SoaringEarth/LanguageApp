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
            print("")
            // TODO - present Quiz Scene
        case .katakana:
            print("")
            // TODO - present Quiz Scene
        }
    }
}
