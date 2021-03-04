//
//  HiraganaDataSet.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 04/03/2021.
//

import Foundation

protocol LanguagePairable {
    var character: String { get set }
    var english: String { get set }
}

struct Kanji: LanguagePairable {
    var character: String
    var english: String
    var hiragana: String
}

struct Hiragana: LanguagePairable {
    var character: String
    var english: String
}

struct HiraganaDataSet {
    static let hiraganaArray: [Hiragana] = [
        Hiragana(character: "あ", english: "a"),
        Hiragana(character: "い", english: "i"),
        Hiragana(character: "う", english: "u"),
        Hiragana(character: "え", english: "e"),
        Hiragana(character: "お", english: "o")
    ]
}
