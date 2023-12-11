//
//  Authorize.swift
//  SwiftInstruct
//
//  Created by FBI Man on 12/10/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

protocol AuthenticationFormProtocol {
    var formIsValid: Bool { get }
}

@MainActor
class AuthorizeModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?      // User session
    @Published var currentUser: User?                   // Current user's data
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        Task {
            await fetchUser()
        }
    }
    
    // Tries to log the user in
    func logIn(email: String, password: String) async throws {
        do {
            let res = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = res.user
            await fetchUser()
        } catch {
            print("ERR: Failed to log in : \(error.localizedDescription)")
        }
    }
    
    // Tries to register the user
    func register(email: String, password: String, name: String) async throws {
        do {
            let res = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = res.user
            
            let user = User(id: res.user.uid, fullname: name, email: email)
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
            await fetchUser()
        } catch {
            print("ERR: Failed to create user : \(error.localizedDescription)")
        }
    }
    
    // Tries to log the user out
    func logOut() {
        do {
            try Auth.auth().signOut()   // Signs out the user
            self.userSession = nil      // Ends the session
            self.currentUser = nil      // Wipes previous data
        } catch {
            print("ERR: Failed to log out : \(error.localizedDescription)")
        }
    }
    
    func deleteAccount() {
        Auth.auth().currentUser?.delete()
    }
    
    // Fetches user data
    func fetchUser() async {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return }
        self.currentUser = try? snapshot.data(as: User.self)
    }
}
