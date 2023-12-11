/* General Input UI View */

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
    let placeholder: String
    var isSecureField = false
    var isName = false
    
    var body: some View {
        if (isSecureField) {
            SecureField(placeholder, text: $text)
                .padding()
                .font(.logRegTitle)
                .frame(width: 350, height: 50)
                .background(.white.opacity(0.75))
                .cornerRadius(10)
                .accentColor(.black)
                .foregroundColor(.gray)
                .textInputAutocapitalization(.never)
            
        } else {
            TextField(placeholder, text: $text)
                .padding()
                .font(.logRegTitle)
                .frame(width: 350, height: 50)
                .background(.white.opacity(0.75))
                .cornerRadius(10)
                .accentColor(.black)
                .foregroundColor(.gray)
                .textInputAutocapitalization(
                    isName ? .words : .never)
        }
    }
}

#Preview {
    InputView(text: .constant(""),
              placeholder: "email@example.com",
              isSecureField: false)
}
