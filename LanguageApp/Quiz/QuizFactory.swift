//
//  QuizFactory.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import Foundation

enum QuizFactory {

    static func makeScene(dataSetFetcher: KanaDataSet) -> QuizViewController {
        let vc = QuizViewController(nibName: String(describing: QuizViewController.self), bundle: .main)
        let presenter = QuizPresenter(view: vc)
        let worker = QuizWorker(dataSetFetcher: dataSetFetcher)
        let interactor = QuizInteractor(presenter: presenter, worker: worker)
        let router = QuizRouter()
        router.bind(to: vc)
        vc.bind(to: interactor, and: router)
        return vc
    }
}
