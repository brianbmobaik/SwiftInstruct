import SwiftUI

struct SwiftBasicsDetailView: View {
    var body: some View {
        VStack(alignment: .leading) { // Adjusted alignment
            ScrollView {
                VStack(alignment: .leading, spacing: 20) { // Adjusted alignment and spacing
                    categoryView(title: "Variables", description: "In Swift, you can declare variables using the var keyword.\n\nvar number = 42")
                    categoryView(title: "Constants", description: "Constants are declared using the let keyword and cannot be changed once set.\n\nlet pi = 3.14")
                    categoryView(title: "Data Types", description: "Swift supports various data types like Int, Double, String, etc.\n\nlet name: String = \"John\"")
                    categoryView(title: "Control Flow", description: "Use if statements, loops, and switch cases for control flow in Swift.\n\nif x > 10 {\n    print(\"x is greater than 10\")\n} else {\n    print(\"x is not greater than 10\")\n}")
                }
                .padding()
            }
        }
        .padding(.horizontal)
    }

    func categoryView(title: String, description: String) -> some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)

            Text(description)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true) // Allow multiline text to expand horizontally
        }
    }
}

struct SwiftBasicsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftBasicsDetailView()
    }
}

