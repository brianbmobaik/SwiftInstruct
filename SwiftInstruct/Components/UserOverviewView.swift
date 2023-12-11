

import SwiftUI

struct UserOverviewView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color("bg_violet"))
                .frame(width: 360, height: 140)
            .opacity(0.8)
            

            HStack(alignment: .center, spacing: 20) {
                CircularProgressBar(
                    progress: 0.32,
                barColor: "blupurp")
             
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color("blupurp"))
                        .frame(width: 220, height: 100)
                        .opacity(0.4)
                    
                    VStack {
                        Text("Goal of the Week")
                            .underline()
                            .font(.moduleDescription)
                        
                        Divider()
                        
                        Text("Module 1: Swift Basics")
                            .multilineTextAlignment(.leading)
                            .font(.moduleTitle)
                        
                    }
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                    .foregroundStyle(.white)
                    .opacity(0.8)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 180, height: 30)
                }
            }
        }
    }
}

#Preview {
    UserOverviewView()
}
