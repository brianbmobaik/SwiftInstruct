/* This will be our main*/

import SwiftUI

@main
struct SwiftInstructApp: App {
        @State private var isLoggedIn = false  // Assuming initially the user is not logged in
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                // If the user is logged in, show the ModulesListView
                ModulesListView(modules: Modules.sampleModule)
            } else {
                // If the user is not logged in, show the MainMenuView
                MainMenuView(loggedIn: $isLoggedIn)
            }
            //MainMenuView()
            //ModulesListView(modules: Modules.sampleModule)
        }
    }
}
