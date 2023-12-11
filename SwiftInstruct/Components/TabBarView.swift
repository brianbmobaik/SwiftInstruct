/* Tab Bar UI */

import SwiftUI


struct TabBarView: View {
    var body: some View {

        TabView {
            Group {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                
                ModulesListView(modules: Modules.sampleModule)
                    .tabItem {
                        Image(systemName: "book.pages.fill")
                    }
                
                
                UserProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape")
                    }
            }
            .toolbarBackground(Color("blupurp"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .accentColor(.mint)
    }
}

struct TabBarView_Previews: PreviewProvider {

    static var previews: some View {
        TabBarView()
    }
}
