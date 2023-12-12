import SwiftUI

struct UserProfileView: View {
    @EnvironmentObject var authModel: AuthorizeModel

    var body: some View {
        if let user = authModel.currentUser {
            ZStack {
                BackgroundView()

                VStack(spacing: 10) {
                    Spacer()

                    CircularProgressBar(progress: 0.35, barColor: "Orange")
                        .frame(width: 120, height: 120)

                    Text("\(user.fullname)")
                        .font(.moduleName)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)

                    Text("\(user.email)")
                        .font(.moduleName)
                        .foregroundStyle(.white)

                    Spacer()
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 360, height: 300)
                        .foregroundColor(Color("bg_violet"))
                        .opacity(0.8)
                )
            }
        }
    }
}
