

import SwiftUI

struct CircularProgressBar: View {
    
    let progress: Double
    let barColor: String
    
    var body: some View {
        ZStack(alignment: .center) {
            Circle()
                .stroke(
                    Color(barColor).opacity(0.5),
                    lineWidth: 12
                )
            
            Text("Ch 1\n\(String(format: "%.1f", progress*100))%")
                .font(.moduleTitle)
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .opacity(0.8)
                .fontWeight(.black)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    Color(barColor),
                    style: StrokeStyle(
                        lineWidth: 12,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
        }
        .frame(width: 90, height: 90)
    }
}

#Preview {
    CircularProgressBar(progress: 0.5, barColor: "bg_orange")
}
