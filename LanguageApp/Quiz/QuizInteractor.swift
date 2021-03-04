//
//  QuizInteractor.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import Foundation

protocol QuizInteractable {}

final class QuizInteractor {

    private let presenter: QuizPresentable
    private let worker: QuizWorkable

    init(presenter: QuizPresentable, worker: QuizWorkable) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension QuizInteractor: QuizInteractable {}
