/* Tab Bar UI */

import SwiftUI

struct TabBarView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white.opacity(0.55))
                .frame(width: .infinity,height: 65)
            
            HStack {
                // Home Button
                Button {
                    // Switch to Home
                } label: {
                    Image(systemName: "house")
                        .foregroundColor(.black)
                        .frame(width: 45, height: 45)
                }
                
                Spacer()
                
                // Find Button
                Button {
                    // Switch to Find
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .frame(width: 45, height: 45)
                }
                
                Spacer()
                
                // Playground Button
                Button {
                    // Switch to Playground
                } label: {
                    Image("btn-Playground")
                        .frame(width: 60, height: 60)
                        .offset(y: -20)
                }
                
                Spacer()
                
                // User Info Button
                Button {
                    // Switch to User Info
                } label: {
                    Image(systemName: "person")
                        .foregroundColor(.black)
                        .frame(width: 45, height: 45)
                }
                
                Spacer()
                
                // Settings Button
                Button {
                    // Switch to Settings
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                        .frame(width: 45, height: 45)
                }
            }
            .padding()
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
