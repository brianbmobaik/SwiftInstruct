

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authModel: AuthorizeModel

    var body: some View {
        Group {
            if authModel.userSession != nil {
                TabBarView()
            } else {
                MainMenuView()
            }
        }
    }
}
