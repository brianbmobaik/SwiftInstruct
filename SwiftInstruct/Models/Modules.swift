/* This will be the struct with all the module informations */

import Foundation

struct Modules: Identifiable {
    let id: UUID
    var title: String
    var progress: Float
    var theme: Theme
    
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
