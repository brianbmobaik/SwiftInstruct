/* Displays the cards in list format */

import SwiftUI

struct ModulesView: View {
    let modules: [Modules]
    
    var body: some View {
        NavigationStack {
            List(modules) { module in
                NavigationLink(destination: Text(module.title)) {
                    CardView(modules: module)
                }
                .listRowBackground(RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(module.theme.mainColor)
                    .frame(width: 360, height: 70))
            }
            .navigationTitle("Modules")
        }
    }
}

struct ModulesView_Previews: PreviewProvider {
    static var previews: some View {
        ModulesView(modules: Modules.sampleModule)
    }
}
