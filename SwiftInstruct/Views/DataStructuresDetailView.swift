import SwiftUI

struct DataStructuresDetailView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    categoryView(title: "Arrays", description: "An ordered collection of elements of the same type.\n\nvar numbers = [1, 2, 3, 4]")
                    categoryView(title: "Linked Lists", description: "A data structure that consists of a sequence of elements where each element points to the next one.\n\nclass Node<T> {\n    var value: T\n    var next: Node<T>?\n}\n\nvar linkedList = Node(value: 1)")
                    categoryView(title: "Stacks", description: "A Last In, First Out (LIFO) data structure where the last element added is the first one to be removed.\n\nvar stack = [1, 2, 3]\nstack.append(4)\nlet lastElement = stack.popLast()")
                    categoryView(title: "Queues", description: "A First In, First Out (FIFO) data structure where the first element added is the first one to be removed.\n\nvar queue = [1, 2, 3]\nqueue.append(4)\nlet firstElement = queue.removeFirst()")
                }
                .padding()
            }
        }
        .padding(.horizontal)
        // .navigationBarTitle("Data Structures")
    }

    func categoryView(title: String, description: String) -> some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)

            Text(description)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct DataStructuresDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DataStructuresDetailView()
    }
}

