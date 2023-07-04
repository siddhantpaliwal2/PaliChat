//
//  AuthViewModel.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import Foundation
import FirebaseAuth

class AuthViewModel{
    static func isUserLoggedIn() -> Bool {
        return Auth.auth().currentUser != nil;
    }
    static func getLoggedInUserId() -> String {
            return Auth.auth().currentUser?.uid ?? "";
    }
    static func logOut() {
        try? Auth.auth().signOut();
    }
}
