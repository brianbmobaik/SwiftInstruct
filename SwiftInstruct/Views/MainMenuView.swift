/* Main Menu for the App */

import SwiftUI

struct MainMenuView: View {
    
    var body: some View {

        NavigationStack {
            ZStack {
                BackgroundView()
                
                VStack(alignment: .center) {
                    
                    Spacer()
                    
                    HStack(alignment: .center) {
                        Spacer()
                        // App Logo
                        Image("ic-Logo")
                        
                        // App Title
                        Text("SwiftInstruct")
                            .font(.appTitle)
                            .opacity(0.8)
                        Spacer()
                    }
                    .padding()
                    
                    Spacer()
                    
                    HStack(alignment: .center, spacing: 25) {
                        // Log In Button
                        NavigationLink {
                            LogInView()
                        } label: {
                            Image("btn-LogIn")
                        }
                        
                        // Register Button
                        NavigationLink {
                            RegisterView()
                        } label: {
                            Image("btn-Register")
                        }
                    }
                    .padding()
                    
                }
            }
        }

    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
