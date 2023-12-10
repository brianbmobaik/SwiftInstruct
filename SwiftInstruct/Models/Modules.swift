import Foundation

struct ModuleData {
    let title: String
    let description: String
    let example: String
}

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
    static let sampleModule: [Modules] = [
        Modules(title: "Module 1: Swift Basics", progress: 1.00, theme: .charcoal),
        Modules(title: "Module 2: Object-Oriented Programming", progress: 0.4572, theme: .charcoal),
        Modules(title: "Module 3: Data Structures", progress: 0.00, theme: .charcoal),
        Modules(title: "Module 4: Swift UI", progress: 0.00, theme: .charcoal)
    ]
}

struct SwiftBasicsData {
    static let modules: [ModuleData] = [
        ModuleData(
            title: "Variables",
            description: "In Swift, you can declare variables using the var keyword.",
            example: "var number = 42"
        ),
        ModuleData(
            title: "Constants",
            description: "Constants are declared using the let keyword and cannot be changed once set.",
            example: "let pi = 3.14"
        )
    ]
}

struct DataStructuresData {
    static let modules: [ModuleData] = [
        ModuleData(
            title: "Arrays",
            description: "An ordered collection of elements of the same type.",
            example: "var numbers = [1, 2, 3, 4]"
        ),
        ModuleData(
            title: "Linked Lists",
            description: "A data structure that consists of a sequence of elements where each element points to the next one.",
            example: "class Node<T> {\n    var value: T\n    var next: Node<T>?\n}\n\nvar linkedList = Node(value: 1)"
        )
        // Add more modules as needed
    ]
}

