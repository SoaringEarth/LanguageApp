//
//  QuizLeaderboardRouter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 09/03/2021.
// 
//

import UIKit

protocol QuizLeaderboardRoutable {}

final class QuizLeaderboardRouter {

    private weak var vc: UIViewController?

    func bind(to vc: UIViewController?) {
        self.vc = vc
    }
}

extension QuizLeaderboardRouter: QuizLeaderboardRoutable {}
