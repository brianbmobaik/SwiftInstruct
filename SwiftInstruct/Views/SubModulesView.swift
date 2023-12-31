
import SwiftUI

struct SubModulesView: View {
    let moduleName: String
    let modules: [ModuleData]
    
    var body: some View {
        ZStack{
           BackgroundView()
           VStack(alignment: .leading) {
               ScrollView {
                   VStack(alignment: .leading, spacing: 20) {
                       Text("\(moduleName)")
                           .font(.title)
                           .fontWeight(.semibold)
                           .underline()
                       ForEach(modules) { module in
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
    SubModulesView(
        moduleName: "Hi",
        modules: Modules.sampleModule[0].subModules
    )
}
