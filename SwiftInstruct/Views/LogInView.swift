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
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
