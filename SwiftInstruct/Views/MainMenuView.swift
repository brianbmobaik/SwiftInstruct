/* Main Menu for the App */

import SwiftUI

struct MainMenuView: View {
    
    @State private var animateGradient: Bool = false
    
    var body: some View {

        ZStack {
            MainMenuBackgroundView()
            
            VStack(alignment: .center) {
                
                Spacer()
                
                HStack(alignment: .center) {
                    Spacer()
                    // App Logo
                    Image("ic-Logo")
                    
                    // App Title
                    Text("SwiftInstruct")
                        .font(.appTitle)
                        .shadow(radius: 2)
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                HStack(alignment: .center) {
                    // Log In Button
                    Button {
                        
                    } label: {
                        Image("btn-LogIn")
                    }
                    
                    // Register Button
                    Button {
                        
                    } label: {
                        Image("btn-Register")
                    }
                }
                .padding()
                
            }
        }

    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
