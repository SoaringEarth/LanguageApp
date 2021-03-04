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
}

final class QuizPresenter {

    private weak var view: QuizViewable?
    private var viewModel: QuizViewModel = .empty

    init(view: QuizViewable?) {
        self.view = view
    }
}

extension QuizPresenter: QuizPresentable {
    func prepareViewModel(currentIndex: Int, languagePairs: [LanguagePairable]) {
        viewModel = QuizViewModel(progress: "\(currentIndex) / \(languagePairs.count)",
                                  target: languagePairs[currentIndex - 1].character,
                                  correctAnswer: languagePairs[currentIndex - 1].english,
                                  incorrectAnswers: [languagePairs[1].english, languagePairs[2].english, languagePairs[3].english])
        view?.updateView(viewModel)
    }
}
