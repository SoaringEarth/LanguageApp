//
//  FirebaseReferenceHelper.swift
//  LanguageApp
//
//  Created by Jonathon Albert on 23/03/2021.
//

import Foundation
import FirebaseFirestore

struct FirebaseReferenceHelper {

    enum FirebaseCollectionReference: String {
        case User
    }

    static func firebaseReference(_ collectionReference: FirebaseCollectionReference) -> CollectionReference {
        return Firestore.firestore().collection(collectionReference.rawValue)
    }
}
