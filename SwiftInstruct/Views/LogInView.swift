/* Log In Menu View */

import SwiftUI

struct LogInView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome to SwiftInstruct")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding()
            
            ZStack(alignment: .leading) {
                if email.isEmpty {
                    Text("Email")
                        .foregroundColor(.gray)
                        .bold()
                        .padding(.leading, 22)
                }
                
                TextField("", text: $email)
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    .padding()
            }
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(.black)
                .padding(.top, -20)
                .offset(x: 20)
            
            ZStack(alignment: .leading) {
                if password.isEmpty {
                    Text("Password")
                        .foregroundColor(.gray)
                        .bold()
                        .padding(.leading, 22)
                }
                
                SecureField("", text: $password)
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    .padding()
            }
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(.black)
                .padding(.top, -20)
                .offset(x: 20)
            
            Button{ } label: {
                Text("Sign Up")
                    .bold()
                    .frame(width: 200, height: 40)
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(LinearGradient(colors: [.blue], startPoint: .top, endPoint: .bottomTrailing))
                    ) .foregroundColor(.white)
            }
            .padding(.top, 10)
            .offset(x: 90)
        }
    }
    
    
    struct LogInView_Previews: PreviewProvider {
        static var previews: some View {
            LogInView()
        }
    }
}
