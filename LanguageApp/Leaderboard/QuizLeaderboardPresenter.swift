//
//  QuizLeaderboardPresenter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 09/03/2021.
//  
//

import UIKit

protocol QuizLeaderboardPresentable: class {
    func prepareViewModel()

}

final class QuizLeaderboardPresenter {

    private weak var view: QuizLeaderboardViewable?
    private var currentScore: Int
    private var questionCount: Int

    init(view: QuizLeaderboardViewable?, score: Int, questionCount: Int) {
        self.view = view
        self.currentScore = score
        self.questionCount = questionCount
    }
}

extension QuizLeaderboardPresenter: QuizLeaderboardPresentable {

    func prepareViewModel() {
        let viewModel = QuizLeaderboardViewModel(userScore: createUserScore(withScore: currentScore, questionCount: questionCount))
        view?.updateView(viewModel)
    }

    private func createUserScore(withScore score: Int, questionCount: Int) -> String {
        return "\(score)/\(questionCount)"
    }
}
