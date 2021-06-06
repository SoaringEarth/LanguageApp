//
//  RegisterViewController.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 23/03/2021.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func registerButtonTapped(_ sender: Any) {
        guard emailTextField.text != "", passwordTextField.text != "", confirmPasswordTextfield.text != "" else { return }

        FirebaseUser.registerUser(emailTextField.text ?? "", password: passwordTextField.text ?? "") { error in
            print("register user")
            print(error)
        }
    }

}
