//
//  FirebaseUser.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 23/03/2021.
//

import Foundation
import FirebaseAuth

struct User: Codable {
    let id: String
    var email: String
}

class FirebaseUser {

    let user: User!

    init(_ id: String, email: String) {
        self.user = User(id: id, email: email)
    }

    class func loginUser(withEmail email: String, password: String, completion: @escaping (_ error: Error?, _ isEmailValidated: Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                return completion(error, false)
            } else {
                if result?.user.isEmailVerified == true {
                    // TODO: Implement user downloading from firebase
                } else {
                    return completion(error, false)
                }
            }
        }
    }

    class func registerUser(_ email: String, password: String, completion: @escaping (_ error: Error?) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                return completion(error)
            }

            result?.user.sendEmailVerification(completion: { error in
                print("Verification email sent")
            })
        }
    }

    class func resetPasssword() {}

    class func logOutUser() {}
}

class FirebaseFirestoreHelper {

    class func downloadUserFromFirestore(_ userId: String, email: String, completion: @escaping (_ error: Error?) -> Void) {
        FirebaseReferenceHelper.firebaseReference(.User).document(userId).getDocument { (snapshot, error) in
            guard let snapshot = snapshot else { return }

            if snapshot.exists, let dataDictionary = snapshot.data() {
                // TODO: Save the user data locally
            } else {
                // TODO: Save User Locally
                let user = FirebaseUser(userId, email: email)
                FirebaseFirestoreHelper.saveUserToFirestore(user)
            }

            completion(error)
        }
    }

    class func saveUserToFirestore(_ firebaseUser: FirebaseUser) {
        guard let dictionary = firebaseUser.user.dictionary else { return }
        FirebaseReferenceHelper.firebaseReference(.User).document(firebaseUser.user.id).setData(dictionary) { error in
            if let error = error {
                print("Failed to create user in database: \(error.localizedDescription)")
            }
        }
    }
}
