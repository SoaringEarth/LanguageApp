//
//  Encodable+Dictionary.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 23/03/2021.
//

import Foundation

extension Encodable {

    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap({ $0 as? [String: Any] })
    }
}
