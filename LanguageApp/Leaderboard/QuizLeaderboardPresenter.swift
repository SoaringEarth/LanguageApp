//
//  QuizLeaderboardPresenter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 09/03/2021.
//  
//

import UIKit

protocol QuizLeaderboardPresentable: class {
    func prepareViewModel(_ quizHistoryItems: [QuizHistoryItem], score: Int, questionCount: Int)

}

final class QuizLeaderboardPresenter {

    private weak var view: QuizLeaderboardViewable?

    init(view: QuizLeaderboardViewable?) {
        self.view = view
    }
}

extension QuizLeaderboardPresenter: QuizLeaderboardPresentable {

    func prepareViewModel(_ quizHistoryItems: [QuizHistoryItem], score: Int, questionCount: Int) {
        let viewModel = QuizLeaderboardViewModel(userScore: createUserScore(withScore: score, questionCount: questionCount),
                                                 cellViewModels: createCellViewModels(quizHistoryItems))
        view?.updateView(viewModel)
    }

    private func createUserScore(withScore score: Int, questionCount: Int) -> String {
        return "\(score)/\(questionCount)"
    }

    private func createCellViewModels(_ historyItems: [QuizHistoryItem]) -> [QuizLeaderboardCellViewModel] {
        return historyItems.map({ QuizLeaderboardCellViewModel(date: $0.date, title: $0.quizType, result: "\($0.score)/\($0.questionCount)") })
    }
}
