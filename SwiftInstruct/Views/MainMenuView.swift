import SwiftUI

struct MainMenuView: View {
    @State private var animateGradient: Bool = false
    @State private var loginSelection: String?
    @State private var registerSelection: String?
    
    var body: some View {
        NavigationView {
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
                    NavigationLink(
                        destination: LogInView(),
                        tag: "login",
                        selection: $loginSelection,
                        label: {
                            Image("btn-LogIn")
                        }
                    )
                }
                  /*  NavigationLink(
                         destination: RegisterView(),
                         tag: "register",
                         selection: $registerSelection,
                         label: {
                             Image("btn-Register")
                         }
                     )
                }*/
                .padding()
            }
            // Animated Background
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("bg_orange"), Color("bg_blue"), Color("bg_purple")]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                    .hueRotation(.degrees(animateGradient ? 45 : 0))
                    .onAppear {
                        withAnimation(Animation.easeInOut(duration: 3)
                            .repeatForever(autoreverses: true))
                        {
                            animateGradient.toggle()
                        }
                    }
            )
        }
    }
}


