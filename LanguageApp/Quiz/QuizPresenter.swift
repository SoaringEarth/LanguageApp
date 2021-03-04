//
//  QuizPresenter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import UIKit

protocol QuizPresentable: class {}

final class QuizPresenter {

    private weak var view: QuizViewable?

    init(view: QuizViewable?) {
        self.view = view
    }
}

extension QuizPresenter: QuizPresentable {}
