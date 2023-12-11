/* Background for General View */

import SwiftUI

struct BackgroundView: View {
    
    @State private var animateGradient: Bool = false
    
    // Gradient Color BG
    let gradientBackground = LinearGradient(
        colors: [Color("bg_orange"),
                 Color("blupurp"),
                 Color("bg_purple")],
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    var body: some View {
        gradientBackground
            .edgesIgnoringSafeArea(.all)
            .hueRotation(.degrees(animateGradient ? 45 : 0))
            .onAppear {
                DispatchQueue.main.async {
                    withAnimation(
                        .easeInOut(duration: 3)
                        .repeatForever(autoreverses: true))
                    {
                        animateGradient.toggle()
                    }
                }
        }
    }
}

#Preview {
    BackgroundView()
}
