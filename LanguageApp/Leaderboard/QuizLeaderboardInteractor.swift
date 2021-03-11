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

    init(presenter: QuizLeaderboardPresentable, worker: QuizLeaderboardWorkable) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension QuizLeaderboardInteractor: QuizLeaderboardInteractable {

    func start() {
        presenter.prepareViewModel()
    }
}
