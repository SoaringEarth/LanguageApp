//
//  HomeRouter.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 02/03/2021.
// 
//

import UIKit

protocol HomeRoutable {}

final class HomeRouter {

    private weak var vc: UIViewController?

    func bind(to vc: UIViewController?) {
        self.vc = vc
    }
}

extension HomeRouter: HomeRoutable {}
