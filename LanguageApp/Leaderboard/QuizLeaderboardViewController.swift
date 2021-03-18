//
//  QuizLeaderboardViewController.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 09/03/2021.
//  
//

import UIKit

protocol QuizLeaderboardViewable: class {
    func updateView(_ viewModel: QuizLeaderboardViewModel)
}

final class QuizLeaderboardViewController: UIViewController {

    private var interactor: QuizLeaderboardInteractable?
    private var router: QuizLeaderboardRoutable?
    private var viewModel: QuizLeaderboardViewModel = .empty

    @IBOutlet weak var userScoreLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.start()
    }

    func bind(to interactor: QuizLeaderboardInteractable?, and router: QuizLeaderboardRoutable) {
        self.interactor = interactor
        self.router = router
    }
}

extension QuizLeaderboardViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cellViewModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = viewModel.cellViewModels[indexPath.row].title
        cell.detailTextLabel?.text = viewModel.cellViewModels[indexPath.row].result
        return cell
    }
}

extension QuizLeaderboardViewController: QuizLeaderboardViewable {

    func updateView(_ viewModel: QuizLeaderboardViewModel) {
        self.viewModel = viewModel
        userScoreLabel.text = viewModel.userScore
        tableView.reloadData()
    }
}
