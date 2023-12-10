/* Log In Menu View */

import SwiftUI

struct LogInView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            MainMenuBackgroundView()
            
            VStack {
                Text("Welcome to SwiftInstruct")
                    .font(.appTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .padding()
                
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(.white.opacity(0.75))
                    .cornerRadius(10)
                
                TextField("Password", text: $password)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(.white.opacity(0.75))
                    .cornerRadius(10)
                
                Button("Log In") {
                    // Log in logic
                }
                .frame(width: 350, height: 50)
                .background(.white.opacity(1))
                .cornerRadius(10)
            }
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
