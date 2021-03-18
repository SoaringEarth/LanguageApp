//
//  QuizLeaderboardViewModel.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 09/03/2021.
//  
//

import Foundation

struct QuizLeaderboardViewModel {

    var userScore: String
    var cellViewModels: [QuizLeaderboardCellViewModel] = []
}

extension QuizLeaderboardViewModel {
    static var empty: QuizLeaderboardViewModel {
        return QuizLeaderboardViewModel(userScore: "")
    }
}
