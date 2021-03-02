//
//  HomeFactory.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 02/03/2021.
//  
//

import UIKit

enum HomeFactory {

    static func makeScene() -> HomeViewController? {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? HomeViewController
        let router = HomeRouter()
        router.bind(to: vc)
        vc?.bind(to: router)
        return vc
    }
}
