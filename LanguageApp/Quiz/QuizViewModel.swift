//
//  QuizViewModel.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//  
//

import Foundation

struct QuizViewModel {
    let progress: String
    let target: String
    let correctAnswer: String
    let incorrectAnswers: [String]
}

extension QuizViewModel {
    static var empty: QuizViewModel {
        return QuizViewModel(progress: "", target: "", correctAnswer: "", incorrectAnswers: [])
    }
}

