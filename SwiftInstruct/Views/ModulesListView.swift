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
                        NavigationLink(destination: {
                            switch module.title {
                            case "Module 1: Swift Basics":
                                SwiftBasicsDetailView()
                            case "Module 2: Object-Oriented Programming":
                                ObjectOrientedProgrammingDetailView()
                            case "Module 3: Data Structures":
                                DataStructuresDetailView()
                            case "Module 4: Swift UI":
                                SwiftUIDetailView()
                            default:
                                Text(module.title)
                            }
                        }) {
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
