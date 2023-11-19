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
                .listRowBackground(Color.clear)
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
