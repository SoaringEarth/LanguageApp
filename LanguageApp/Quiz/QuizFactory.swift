//
//  QuizFactory.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import Foundation

enum QuizFactory {

    static func makeScene() -> QuizViewController {
        let vc = QuizViewController(nibName: String(describing: QuizViewController.self), bundle: .main)
        let presenter = QuizPresenter(view: vc)
        let worker = QuizWorker()
        let interactor = QuizInteractor(presenter: presenter, worker: worker)
        let router = QuizRouter()
        router.bind(to: vc)
        vc.bind(to: interactor, and: router)
        return vc
    }
}
