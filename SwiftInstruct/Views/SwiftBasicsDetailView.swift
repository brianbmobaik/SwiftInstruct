import SwiftUI

struct SwiftBasicsDetailView: View {
    var modules: [ModuleData] = SwiftBasicsData.modules

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

struct SwiftBasicsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftBasicsDetailView()
    }
}
