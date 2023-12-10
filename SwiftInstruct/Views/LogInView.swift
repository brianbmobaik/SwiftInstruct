/* Log In Menu View */

import SwiftUI

struct LogInView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Email Address", text: $email)
                SecureField("Password", text: $password)
            }
            
            Button {
                
            }
                label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                }
            }
        }
    }

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
