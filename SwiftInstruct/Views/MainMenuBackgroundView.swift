/* Background for Main Menu */

import SwiftUI

// Gradient Colors List
let gradientColors = [Color("bg_orange"), Color("bg_blue"), Color("bg_purple")]

// Gradient Color BG
let gradientBackground = LinearGradient(colors: gradientColors,
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)

struct MainMenuBackgroundView: View {
    
    @State private var animateGradient: Bool = false
    
    var body: some View {
        gradientBackground
            .edgesIgnoringSafeArea(.all)
            .hueRotation(.degrees(animateGradient ? 45 : 0))
            .onAppear {
                withAnimation(.easeInOut(duration: 3)
                    .repeatForever(autoreverses: true))
                {
                    animateGradient.toggle()
                }
            }
    }
}

#Preview {
    MainMenuBackgroundView()
}
