/* This will be our main*/

import SwiftUI

@main
struct SwiftInstructApp: App {
    var body: some Scene {
        WindowGroup {
            ModulesView(modules: Modules.sampleModule)
        }
    }
}
