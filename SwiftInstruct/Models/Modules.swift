/* This will be the struct with all the module informations */

import Foundation
import SwiftUI

struct Modules: Identifiable {
    let id: UUID
    var title: String
    var progress: Float
    var theme: Theme
    
    var progressCheck: String {
        return progress == 1 ? "checkmark.circle.fill" :
               progress > 0 ? "arrow.right.circle.fill" : "x.circle.fill"
    }
    
    var progressTheme: Color {
        return progress == 1 ? .green :
               progress > 0 ? .orange : .red
    }
    
    init(id: UUID = UUID(), title: String, progress: Float, theme: Theme) {
        self.id = id
        self.title = title
        self.progress = progress
        self.theme = theme
    }
}

extension Modules {
    static let sampleModule: [Modules] =
    [
        Modules(title: "Module 1: Swift Basics",
                progress: 1.00,
                theme: .charcoal),
        Modules(title: "Module 2: Object-Oriented Programming",
                progress: 0.4572,
                theme: .charcoal),
        Modules(title: "Module 3: Data Structures",
                progress: 0.00,
                theme: .charcoal),
        Modules(title: "Module 4: Swift UI",
                progress: 0.00,
                theme: .charcoal)
    ]
}
