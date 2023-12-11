/* Displays the cards in list format */

import SwiftUI

struct ModulesListView: View {
    let modules: [Modules]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                BackgroundView()
                    
                VStack(spacing: 80) {
                    Spacer()
                    
                    ModuleOverviewView()
                    
                    List(modules) { module in
                        NavigationLink(destination: SubModulesView(modules: module.subModules)) {
                            ModuleView(modules: module)
                        }
                        .listRowBackground(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .foregroundColor(Color(.charcoal))
                                .frame(width: 360, height: 70))
                    }
                    .navigationTitle("Modules")
                    .scrollContentBackground(.hidden)
                }
            }
        }
    }
}

struct ModulesListView_Previews: PreviewProvider {
    static var previews: some View {
        ModulesListView(modules: Modules.sampleModule)
    }
}
