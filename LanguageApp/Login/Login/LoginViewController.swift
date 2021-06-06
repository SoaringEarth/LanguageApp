//
//  LoginViewController.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 23/03/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logInButtonTapped(_ sender: Any) {
        guard emailTextField.text != "", passwordTextField.text != "" else { return }

    }
}
