//
//  QuizLeaderboardInteractor.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 09/03/2021.
//  
//

import Foundation

protocol QuizLeaderboardInteractable {
    func start()
}

final class QuizLeaderboardInteractor {

    private let presenter: QuizLeaderboardPresentable
    private let worker: QuizLeaderboardWorkable
    private let quizType: String

    private var currentScore: Int
    private var questionCount: Int

    init(presenter: QuizLeaderboardPresentable, worker: QuizLeaderboardWorkable, quizType: String, score: Int, questionCount: Int) {
        self.presenter = presenter
        self.worker = worker
        self.quizType = quizType
        self.currentScore = score
        self.questionCount = questionCount
    }
}

extension QuizLeaderboardInteractor: QuizLeaderboardInteractable {

    func start() {
        worker.saveScore(date: Date(), score: currentScore, questionCount: questionCount, quizType: quizType) { [weak self] in
            self?.fetchLeaderboard()
        }
    }

    private func fetchLeaderboard() {
        worker.fetchScores(forQuizType: quizType) { [weak self] historyItems in
            self?.presenter.prepareViewModel(historyItems, score: self?.currentScore ?? 0, questionCount: self?.questionCount ?? 0)
        }
    }
}
