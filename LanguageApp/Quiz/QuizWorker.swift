//
//  QuizWorker.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import Foundation

protocol QuizWorkable {
    func fetchData(completion: @escaping ([LanguagePairable]) -> Void)
}

final class QuizWorker {

    let dataSetFetcher: KanaDataSet
    
    init(dataSetFetcher: KanaDataSet) {
        self.dataSetFetcher = dataSetFetcher
    }
}

extension QuizWorker: QuizWorkable {

    func fetchData(completion: @escaping ([LanguagePairable]) -> Void) {
        completion(dataSetFetcher.baseArray.shuffled())
    }
}
