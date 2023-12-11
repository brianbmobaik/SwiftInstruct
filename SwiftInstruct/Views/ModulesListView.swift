/* Displays the cards in list format */

import SwiftUI

struct ModulesListView: View {
    let modules: [Modules]

    var body: some View {
        VStack {
            HeaderView()

            Spacer()

            NavigationStack {
                List(modules) { module in
                    NavigationLink(destination: {
                        if module.title == "Module 1: Swift Basics" {
                            SwiftBasicsDetailView()
                        } else if module.title == "Module 2: Object-Oriented Programming" {
                            ObjectOrientedProgrammingDetailView()
                        } else if module.title == "Module 3: Data Structures" {
                            DataStructuresDetailView()
                        } else if module.title == "Module 4: Swift UI" {
                            SwiftUIDetailView()
                        } else {
                            Text(module.title)
                        }
                    }) {
                        ModuleView(modules: module)
                    }
                    .listRowBackground(RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .foregroundColor(module.theme.mainColor)
                        .frame(width: 360, height: 70))
                }
                .navigationTitle("Modules")
            }

            Spacer()

            TabBarView()
        }
    }
}
