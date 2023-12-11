/* Log In Menu View */

import SwiftUI

struct LogInView: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var authModel: AuthorizeModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                
                VStack(alignment: .center, spacing: 10) {
                    Spacer()
                    
                    Text("Welcome Back")
                        .multilineTextAlignment(.center)
                        .font(.appTitle)
                        .foregroundStyle(.black)
                        .padding()
                    
                    InputView(text: $email,
                              placeholder: "Email")
                    
                    InputView(text: $password,
                              placeholder: "Password",
                              isSecureField: true)
                    
                    // Tries to log the user in
                    Button {
                        Task {
                            try await authModel.logIn(email: email, password: password)
                            
                            if authModel.userSession != nil {
                                ContentView()
                            }
                        }
                    } label: {
                        Text("Log In")
                            .font(.logRegTitle)
                            .foregroundStyle(.white)
                    }
                    .frame(width: 350, height: 50)
                    .background(.black)
                    .disabled(!formIsValid)
                    .opacity(formIsValid ? 1.0 : 0.25)
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    // Takes user to sign up page
                    NavigationLink {
                        RegisterView()
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                            Text("Sign Up")
                                .fontWeight(.bold)
                        }
                        .foregroundStyle(.black)
                    }
                }
                .padding()
            }
        }
    }
}

extension LogInView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") &&
               !password.isEmpty && password.count > 5
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
