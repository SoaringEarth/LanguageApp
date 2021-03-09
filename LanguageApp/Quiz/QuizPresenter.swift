//
//  QuizPresenter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import UIKit

protocol QuizPresentable: class {
    func prepareViewModel(currentIndex: Int, languagePairs: [LanguagePairable])
    func quizCompleted()
}

final class QuizPresenter {

    private weak var view: QuizViewable?
    private var viewModel: QuizViewModel = .empty

    init(view: QuizViewable?) {
        self.view = view
    }

    private func createIncorrectAnswerArray(numberOfIncorrectAnswers: Int, correctAnswer: String, languagePairs: [LanguagePairable]) -> [String] {
        var incorrectArray: [String] = []
        let zeroIndexedCount = languagePairs.count - 1
        while incorrectArray.count < numberOfIncorrectAnswers {
            let incorrectIndex = Int(arc4random()) % zeroIndexedCount
            let incorrectAnswer = languagePairs[incorrectIndex].english
            if !incorrectArray.contains(incorrectAnswer) && incorrectAnswer != correctAnswer {
                incorrectArray.append(incorrectAnswer)
            }
        }
        return incorrectArray
    }
}

extension QuizPresenter: QuizPresentable {
    func prepareViewModel(currentIndex: Int, languagePairs: [LanguagePairable]) {
        viewModel = QuizViewModel(progress: "\(currentIndex) / \(languagePairs.count)",
                                  target: languagePairs[currentIndex - 1].character,
                                  correctAnswer: languagePairs[currentIndex - 1].english,
                                  incorrectAnswers: createIncorrectAnswerArray(numberOfIncorrectAnswers: 3,
                                                                               correctAnswer: languagePairs[currentIndex - 1].english,
                                                                               languagePairs: languagePairs))
        view?.updateView(viewModel)
    }

    func quizCompleted() {
        view?.routeToQuizLeaderboard()
    }
}
