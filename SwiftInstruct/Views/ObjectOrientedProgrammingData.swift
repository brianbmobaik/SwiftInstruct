import SwiftUI

struct ObjectOrientedProgrammingDetailView: View {
    var modules: [ModuleData] = ObjectOrientedProgrammingData.modules

    var body: some View {
        ZStack{
            BackgroundView()
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
        
    }

    func categoryView(title: String, description: String, example: String) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)

            Text(description)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)

            Spacer()

            Text(example)
                .foregroundColor(.blue)
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct ObjectOrientedProgrammingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectOrientedProgrammingDetailView()
    }
}
