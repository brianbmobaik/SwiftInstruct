/* Displays the cards in list format */

import SwiftUI

struct ModulesListView: View {
    let modules: [Modules]
    
    var body: some View {
        VStack {
            HeaderView()
            
            NavigationStack {
                List(modules) { module in
                    NavigationLink(destination: Text(module.title)) {
                        ModuleView(modules: module)
                    }
                    .listRowBackground(RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .foregroundColor(module.theme.mainColor)
                        .frame(width: 360, height: 70))
                }
                .navigationTitle("Modules")
            }
            
            TabBarView()
        }
    }
}

struct ModulesListView_Previews: PreviewProvider {
    static var previews: some View {
        ModulesListView(modules: Modules.sampleModule)
    }
}
