import SwiftUI
struct MainMenuView: View {
    @StateObject private var viewModel = AppViewModel()
    @State private var loginSelection: String?
    @State private var registerSelection: String?

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView(viewModel: viewModel) // Animated background

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
                            destination: LogInView(viewModel: viewModel),
                            tag: "login",
                            selection: $loginSelection,
                            label: {
                                Image("btn-LogIn")
                            }
                        )
                        .padding()
                        
                        // Register Button
                        NavigationLink(
                            destination: RegisterView(viewModel: viewModel),
                            tag: "register",
                            selection: $registerSelection,
                            label: {
                                Image("btn-Register")
                            }
                        )
                        .padding()
                    }
                }
            }
        }
    }
}

