import SwiftUI

struct BackgroundView: View {
    @ObservedObject var viewModel: AppViewModel

    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("bg_orange"), Color("bg_blue"), Color("bg_purple")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
        .hueRotation(.degrees(viewModel.animateGradient ? 45 : 0))
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                viewModel.animateGradient.toggle()
            }
        }
    }
}
