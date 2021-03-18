//
//  QuizLeaderboardWorker.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 09/03/2021.
//  
//

import Foundation


struct QuizHistoryItem: Codable {
    let date: Date
    let score: Int
    let questionCount: Int
    let quizType: String
}

protocol QuizLeaderboardWorkable {

    func saveScore(date: Date, score: Int, questionCount: Int, quizType: String, completion: @escaping () -> Void)
    func fetchScores(forQuizType quizType: String, completion: @escaping ([QuizHistoryItem]) -> Void)
}

final class QuizLeaderboardWorker {

    init() {

    }
}

extension QuizLeaderboardWorker: QuizLeaderboardWorkable {

    func saveScore(date: Date, score: Int, questionCount: Int, quizType: String, completion: @escaping () -> Void) {
        let quizItem = QuizHistoryItem(date: date,
                                       score: score,
                                       questionCount: questionCount,
                                       quizType: quizType)
        if let quizHistoryData = UserDefaults.standard.value(forKey: "\(quizType)") as? Data,
           var quizHistory = try? PropertyListDecoder().decode(Array<QuizHistoryItem>.self, from: quizHistoryData) {
            quizHistory.append(quizItem)
            UserDefaults.standard.set(try? PropertyListEncoder().encode(quizHistory), forKey: quizType)
        } else {
            UserDefaults.standard.set(try? PropertyListEncoder().encode([quizItem]), forKey: quizType)
        }
        UserDefaults.standard.synchronize()
        completion()
    }

    func fetchScores(forQuizType quizType: String, completion: @escaping ([QuizHistoryItem]) -> Void) {
        guard
            let quizHistoryData = UserDefaults.standard.value(forKey: "\(quizType)") as? Data,
            let quizHistory = try? PropertyListDecoder().decode(Array<QuizHistoryItem>.self, from: quizHistoryData)
        else {
            return completion([])
        }

        completion(quizHistory)
    }
}
