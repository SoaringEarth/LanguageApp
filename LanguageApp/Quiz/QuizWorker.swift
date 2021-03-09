//
//  QuizWorker.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import Foundation

protocol QuizWorkable {
    func fetchHiragana(completion: @escaping ([LanguagePairable]) -> Void)
}

final class QuizWorker {
    
    init() {}
}

extension QuizWorker: QuizWorkable {

    func fetchHiragana(completion: @escaping ([LanguagePairable]) -> Void) {
        completion(HiraganaDataSet.hiraganaArray.shuffled())
    }
}
