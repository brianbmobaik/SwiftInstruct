
import SwiftUI

struct UserProfileView: View {
    @EnvironmentObject var authModel: AuthorizeModel
    
    var body: some View {
        if let user = authModel.currentUser {
            ZStack {
                BackgroundView()
                
                VStack {
                    Text("\(user.fullname)")
                        .font(.moduleName)
                        .fontWeight(.bold)
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
                .background(
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 360, height: 220)
                    .foregroundStyle(Color("bg_violet"))
                    .opacity(0.8)
                )
                
            }
        }
    }
}

#Preview {
    UserProfileView()
}
