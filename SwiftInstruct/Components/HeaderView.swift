/* Header UI View */

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var authModel: AuthorizeModel
    
    var body: some View {
        if let user = authModel.currentUser {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello!")
                    Text("\(user.fullname)")
                        .font(.headerName)
                        .fontWeight(.bold)
                }
                .foregroundColor(.black)
                .opacity(0.8)
                .shadow(radius: 4)
                
                Spacer()
                
                Image("ic-AppLogo")
            }
            .padding()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
