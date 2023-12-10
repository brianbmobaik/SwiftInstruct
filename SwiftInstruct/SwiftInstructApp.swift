/* This will be our main*/

import SwiftUI

@main
struct SwiftInstructApp: App {
    @StateObject private var appViewModel = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainMenuView()
                .environmentObject(appViewModel)
        }
    }
}
