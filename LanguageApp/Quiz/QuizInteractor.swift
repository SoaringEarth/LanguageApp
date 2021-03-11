//
//  QuizInteractor.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import Foundation

protocol QuizInteractable {
    func start()
    func answerSelected(isCorrect: Bool)
}

final class QuizInteractor {

    private let presenter: QuizPresentable
    private let worker: QuizWorkable
    private var currentIndex: Int = 1
    private var languagePairs: [LanguagePairable] = []
    private var correctAnswers: Int = 0

    init(presenter: QuizPresentable, worker: QuizWorkable) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension QuizInteractor: QuizInteractable {

    func start() {
        fetchHiragana()
    }

    func answerSelected(isCorrect: Bool) {
        correctAnswers += isCorrect ? 1 : 0
        currentIndex += 1
        currentIndex > languagePairs.count ? presenter.quizCompleted(withScore: correctAnswers, questionCount: languagePairs.count) : presenter.prepareViewModel(currentIndex: currentIndex, languagePairs: languagePairs)
    }

    private func fetchHiragana() {
        worker.fetchData { [weak self] languagePairs in
            guard let self = self else { return }
            self.languagePairs = languagePairs
            self.presenter.prepareViewModel(currentIndex: self.currentIndex, languagePairs: self.languagePairs)
        }
    }
}
