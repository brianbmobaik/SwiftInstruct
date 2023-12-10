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
        ),
        ModuleData(
            title: "Data Types",
            description: "Swift supports various data types like Int, Double, String, etc.",
            example: "let name: String = \"John\""
        ),
        ModuleData(
            title: "Control Flow",
            description: "Use if statements, loops, and switch cases for control flow in Swift.",
            example: "if x > 10 {\n    print(\"x is greater than 10\")\n} else {\n    print(\"x is not greater than 10\")\n}"
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
        ),
        ModuleData(
            title: "Stacks",
            description: "A Last In, First Out (LIFO) data structure where the last element added is the first one to be removed.",
            example: "var stack = [1, 2, 3]\nstack.append(4)\nlet lastElement = stack.popLast()"
        ),
        ModuleData(
            title: "Queues",
            description: "A First In, First Out (FIFO) data structure where the first element added is the first one to be removed.",
            example: "var queue = [1, 2, 3]\nqueue.append(4)\nlet firstElement = queue.removeFirst()"
        )
    ]
}

