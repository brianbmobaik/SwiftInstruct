/* Register Menu View */

import SwiftUI

struct RegisterView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @EnvironmentObject var authModel: AuthorizeModel
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                BackgroundView()
                
                VStack(spacing: 10) {
                    
                    Spacer()
                    
                    Text("Welcome to SwiftInstruct!")
                        .multilineTextAlignment(.center)
                        .font(.appTitle)
                        .foregroundStyle(.black)
                        .padding()
                    
                    InputView(text: $name,
                              placeholder: "Full Name",
                              isName: true)
                    
                    InputView(text: $email,
                              placeholder: "Email")
                    
                    InputView(text: $password,
                              placeholder: "Password",
                              isSecureField: true)
                    
                    ZStack(alignment: .trailing) {
                        InputView(text: $confirmPassword,
                                  placeholder: "Confirm Password",
                                  isSecureField: true)
                        
                        // Password Validation
                        if !password.isEmpty && !confirmPassword.isEmpty {
                            if password == confirmPassword {
                                Image(systemName: "checkmark.circle.fill")
                                    .imageScale(.large)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color(.systemGreen))
                            } else {
                                Image(systemName: "xmark.circle.fill")
                                    .imageScale(.large)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color(.systemRed))
                            }
                        }
                    }
                    
                    // Tries to register the user with the information
                    Button {
                        Task {
                            try await authModel.register(email: email,
                                                         password: password,
                                                         name: name)
                        }
                    } label: {
                        Text("Register")
                            .font(.logRegTitle)
                            .foregroundStyle(.white)
                    }
                    .frame(width: 350, height: 50)
                    .background(.black)
                    .disabled(!formIsValid)
                    .opacity(formIsValid ? 1.0 : 0.25)
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    // Takes user to log in page
                    NavigationLink {
                        LogInView()
                    } label: {
                        HStack {
                            Text("Already have an account?")
                            Text("Sign In")
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                        }
                        .foregroundStyle(.black)
                    }
                    .padding()
                    
                }
            }
        }
    }
}

extension RegisterView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") &&
               !password.isEmpty && password.count > 5 &&
               !name.isEmpty && password == confirmPassword
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
