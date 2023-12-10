import SwiftUI

struct DataStructuresDetailView: View {
    var modules: [ModuleData] = DataStructuresData.modules

    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(modules, id: \.title) { module in
                        categoryView(title: module.title, description: module.description, example: module.example)
                    }
                }
                .padding()
            }
        }
        .padding(.horizontal)
        // .navigationBarTitle("Data Structures")
    }

    func categoryView(title: String, description: String, example: String) -> some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)

            Text(description)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)

            Text(example)
                .foregroundColor(.blue)
                .font(.system(size: 12))
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct DataStructuresDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DataStructuresDetailView()
    }
}
