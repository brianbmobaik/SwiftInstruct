import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ProgressView(value:10, total: 15)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
