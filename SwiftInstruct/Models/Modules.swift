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

struct ModuleData{
    let title: String
    let description: String
    let example: String
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

struct ObjectOrientedProgrammingData {
    static let modules: [ModuleData] = [
        ModuleData(
            title: "Classes and Objects",
            description: "Define classes to encapsulate data and behavior.",
            example: "class Person {\n    var name: String\n    var age: Int\n    init(name: String, age: Int) {\n        self.name = name\n        self.age = age\n    }\n}"
        ),
        ModuleData(
            title: "Inheritance",
            description: "Create new classes based on existing ones.",
            example: "class Student: Person {\n    var studentId: String\n    init(name: String, age: Int, studentId: String) {\n        super.init(name: name, age: age)\n        self.studentId = studentId\n    }\n}"
        ),
        ModuleData(
            title: "Polymorphism",
            description: "Enable a class to provide different implementations for its methods.",
            example: "class Shape {\n    func draw() {\n        // Implementation for drawing shape\n    }\n}\n\nclass Circle: Shape {\n    override func draw() {\n        // Implementation for drawing circle\n    }\n}"
        ),
        ModuleData(
            title: "Encapsulation",
            description: "Hide the internal implementation details of an object and expose only what is necessary.",
            example: "class BankAccount {\n    private var balance: Double\n    init(initialBalance: Double) {\n        self.balance = initialBalance\n    }\n    func deposit(amount: Double) {\n        // Implementation for deposit\n    }\n}"
        )
    ]
}

struct SwiftUIProgrammingData {
    static let modules: [ModuleData] = [
        ModuleData(
            title: "Swift UI Basics",
            description: "Introduction to building user interfaces with SwiftUI.",
            example: "struct ContentView: View {\n    var body: some View {\n        Text(\"Hello, SwiftUI!\")\n    }\n}"
        ),
        ModuleData(
            title: "State and Binding",
            description: "Manage and update the state of your SwiftUI views.",
            example: "struct CounterView: View {\n    @State private var count = 0\n    var body: some View {\n        Button(\"Increment\") {\n            count += 1\n        }\n    }\n}"
        ),
        ModuleData(
            title: "Lists and Navigation",
            description: "Create dynamic lists and implement navigation in SwiftUI apps.",
            example: "struct ListView: View {\n    var body: some View {\n        NavigationView {\n            List {\n                Text(\"Item 1\")\n                Text(\"Item 2\")\n            }\n            .navigationTitle(\"List\")\n        }\n    }\n}"
        ),
        ModuleData(
            title: "Animations",
            description: "Add animations to your SwiftUI views for a more engaging user experience.",
            example: "struct AnimatedView: View {\n    @State private var rotation: Double = 0\n    var body: some View {\n        Image(systemName: \"arrow.right.circle\")\n            .rotationEffect(.degrees(rotation))\n            .onTapGesture {\n                withAnimation {\n                    rotation += 45\n                }\n            }\n    }\n}"
        )
    ]
}
