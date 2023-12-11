

import SwiftUI

struct SubModulesModelView: View {
    let modules: [ModuleData]
    
    var body: some View {
        ZStack{
           BackgroundView()
           VStack(alignment: .leading) {
               ScrollView() {
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
        .padding()
        .frame(width: 360)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .foregroundStyle(Color("blupurp"))
                .opacity(0.5)
        )
    }
}

#Preview {
    SubModulesModelView(modules: Modules.sampleModule[3].subModules)
}
