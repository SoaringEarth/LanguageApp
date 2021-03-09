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

struct Katakana: LanguagePairable {
    var character: String
    var english: String
}

struct HiraganaDataSet {
    static let hiraganaArray: [Hiragana] = [
        Hiragana(character: "あ", english: "a"),
        Hiragana(character: "い", english: "i"),
        Hiragana(character: "う", english: "u"),
        Hiragana(character: "え", english: "e"),
        Hiragana(character: "お", english: "o"),
        Hiragana(character: "や", english: "ya"),
        Hiragana(character: "ゆ", english: "yu"),
        Hiragana(character: "よ", english: "yo"),
        Hiragana(character: "か", english: "ka"),
        Hiragana(character: "き", english: "ki"),
        Hiragana(character: "く", english: "ku"),
        Hiragana(character: "け", english: "ke"),
        Hiragana(character: "こ", english: "ko"),
        Hiragana(character: "さ", english: "sa"),
        Hiragana(character: "し", english: "shi"),
        Hiragana(character: "す", english: "su"),
        Hiragana(character: "せ", english: "se"),
        Hiragana(character: "そ", english: "so"),
        Hiragana(character: "た", english: "ta"),
        Hiragana(character: "ち", english: "chi"),
        Hiragana(character: "つ", english: "tu"),
        Hiragana(character: "て", english: "te"),
        Hiragana(character: "と", english: "to"),
        Hiragana(character: "な", english: "na"),
        Hiragana(character: "に", english: "ni"),
        Hiragana(character: "ぬ", english: "nu"),
        Hiragana(character: "ね", english: "ne"),
        Hiragana(character: "の", english: "no"),
        Hiragana(character: "は", english: "ha"),
        Hiragana(character: "ひ", english: "hi"),
        Hiragana(character: "ふ", english: "fu"),
        Hiragana(character: "へ", english: "he"),
        Hiragana(character: "ほ", english: "ho"),
        Hiragana(character: "ま", english: "ma"),
        Hiragana(character: "み", english: "mi"),
        Hiragana(character: "む", english: "mu"),
        Hiragana(character: "め", english: "me"),
        Hiragana(character: "も", english: "mo"),
        Hiragana(character: "ら", english: "ra"),
        Hiragana(character: "り", english: "ri"),
        Hiragana(character: "る", english: "ru"),
        Hiragana(character: "れ", english: "re"),
        Hiragana(character: "ろ", english: "ro"),
        Hiragana(character: "わ", english: "wa"),
        Hiragana(character: "を", english: "wo"),
        Hiragana(character: "ん", english: "n")
    ]
}

struct KatakanaDataSet {
    static let katakanaArray: [Katakana] = [
        Katakana(character: "あ", english: "a"),
        Katakana(character: "い", english: "i"),
        Katakana(character: "う", english: "u"),
        Katakana(character: "え", english: "e"),
        Katakana(character: "お", english: "o"),
        Katakana(character: "ャ", english: "ya"),
        Katakana(character: "ュ", english: "yu"),
        Katakana(character: "ョ", english: "yo"),
        Katakana(character: "カ", english: "ka"),
        Katakana(character: "キ", english: "ki"),
        Katakana(character: "ク", english: "ku"),
        Katakana(character: "ケ", english: "ke"),
        Katakana(character: "コ", english: "ko"),
        Katakana(character: "サ", english: "sa"),
        Katakana(character: "シ", english: "shi"),
        Katakana(character: "ス", english: "su"),
        Katakana(character: "セ", english: "se"),
        Katakana(character: "ソ", english: "so"),
        Katakana(character: "タ", english: "ta"),
        Katakana(character: "チ", english: "chi"),
        Katakana(character: "ツ", english: "tu"),
        Katakana(character: "テ", english: "te"),
        Katakana(character: "ト", english: "to"),
        Katakana(character: "ナ", english: "na"),
        Katakana(character: "ニ", english: "ni"),
        Katakana(character: "ヌ", english: "nu"),
        Katakana(character: "ネ", english: "ne"),
        Katakana(character: "ノ", english: "no"),
        Katakana(character: "ハ", english: "ha"),
        Katakana(character: "ヒ", english: "hi"),
        Katakana(character: "フ", english: "fu"),
        Katakana(character: "ヘ", english: "he"),
        Katakana(character: "ホ", english: "ho"),
        Katakana(character: "マ", english: "ma"),
        Katakana(character: "ミ", english: "mi"),
        Katakana(character: "ム", english: "mu"),
        Katakana(character: "メ", english: "me"),
        Katakana(character: "モ", english: "mo"),
        Katakana(character: "ラ", english: "ra"),
        Katakana(character: "リ", english: "ri"),
        Katakana(character: "ル", english: "ru"),
        Katakana(character: "レ", english: "re"),
        Katakana(character: "ロ", english: "ro"),
        Katakana(character: "ワ", english: "wa"),
        Katakana(character: "ヲ", english: "wo"),
        Katakana(character: "ン", english: "n")
    ]
}
