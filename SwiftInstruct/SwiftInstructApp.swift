/* This will be our main*/

import SwiftUI
import Firebase

@main
struct SwiftInstructApp: App {
    @StateObject private var authViewModel = AuthorizeModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
        }
    }
}
